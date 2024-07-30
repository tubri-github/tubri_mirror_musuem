document.addEventListener('DOMContentLoaded', function () {
    // Load unique last names on page load
    loadUniqueLastNames();

    // Function to load unique last names from a text file
    function loadUniqueLastNames() {
        fetch('SuttkusFieldNotesLastNames.txt')
            .then(response => response.text())
            .then(data => {
                const treeCollectors = document.getElementById('treeCollectors');
                const lines = data.split('\n');
                lines.shift(); // Remove header
                lines.forEach(line => {
                    const [count, name] = line.split('\t');
                    if (name) {
                        const sanitizedFileName = staticLinks[name.trim()];
                        const li = document.createElement('li');
                        li.classList.add('collapsed');
                        li.innerHTML = `<img class="expand-collapse" src="../images/plus.gif" alt="+" />` +
                            `<span class="node-content">${name} (${count}) <a href="details/${sanitizedFileName}" target="_blank">Print View</a></span>`;
                        li.dataset.name = name.trim();
                        li.addEventListener('click', function (event) {
                            if (event.target.closest('.details-div')) return; // Ignore clicks within details-div
                            event.stopPropagation();
                            const icon = this.querySelector('.expand-collapse');
                            if (this.classList.contains('collapsed')) {
                                this.classList.remove('collapsed');
                                this.classList.add('expanded');
                                icon.src = "../images/minus.gif"; // Change to minus icon
                                getNamesForUniqueLastname(this);
                            } else { // Collapse condition
                                this.classList.remove('expanded');
                                this.classList.add('collapsed');
                                icon.src = "../images/plus.gif"; // Change to plus icon
                                clearChildNodes(this);
                            }
                        });
                        treeCollectors.appendChild(li);
                    }
                });
            });
    }


// Function to load names for a unique last name
    function getNamesForUniqueLastname(element) {
        fetch('SuttkusFieldNotesNames.txt')
            .then(response => response.text())
            .then(data => {
                const name = element.dataset.name;
                const lines = data.split('\n');
                lines.shift(); // Remove header
                const ul = document.createElement('ul');
                ul.classList.add('tree-node');
                lines.forEach(line => {
                    const [count, fullName, lastName] = line.split('\t');
                    if (lastName && lastName.trim() === name) {
                        const li = document.createElement('li');
                        li.classList.add('collapsed');
                        li.innerHTML = `<img class="expand-collapse" src="../images/plus.gif" alt="+" />` +
                            `<span class="node-content">${fullName} (${count}) <a target="_blank" href="details.html?FullName=${fullName.trim()}">Print View</a></span>`;
                        li.dataset.name = fullName.trim();
                        li.addEventListener('click', function (event) {
                            if (event.target.closest('.details-div')) return; // Ignore clicks within details-div
                            event.stopPropagation();
                            const icon = this.querySelector('.expand-collapse');
                            if (this.classList.contains('collapsed')) {
                                this.classList.remove('collapsed');
                                this.classList.add('expanded');
                                icon.src = "../images/minus.gif"; // Change to minus icon
                                getLocalitiesForName(this);
                            } else { // Collapse condition
                                this.classList.remove('expanded');
                                this.classList.add('collapsed');
                                icon.src = "../images/plus.gif"; // Change to plus icon
                                clearChildNodes(this);
                            }
                        });
                        ul.appendChild(li);
                    }
                });
                element.appendChild(ul);
            });
    }

    // Function to load localities for a name
    function getLocalitiesForName(element) {
        fetch('SuttkusFieldNotesMain.txt')
            .then(response => response.text())
            .then(data => {
                const name = element.dataset.name;
                const lines = data.split('\n');
                lines.shift(); // Remove header
                const ul = document.createElement('ul');
                ul.classList.add('tree-node');
                lines.forEach(line => {
                    const [localityID, collectorName, lastNameGuess, verbatimCollectors, fieldNo, year, verbatimDate] = line.split('\t');
                    if (collectorName && collectorName.trim() === name) {
                        const li = document.createElement('li');
                        li.classList.add('collapsed');
                        li.innerHTML = `<img class="expand-collapse" src="../images/plus.gif" alt="+" />` +
                            `<span class="node-content">${verbatimDate}; ${fieldNo}; ${verbatimCollectors}</span>`;
                        li.dataset.localityId = localityID.trim();
                        li.addEventListener('click', function (event) {
                            if (event.target.closest('.details-div')) return; // Ignore clicks within details-div
                            event.stopPropagation();
                            const icon = this.querySelector('.expand-collapse');
                            if (this.classList.contains('collapsed')) {
                                this.classList.remove('collapsed');
                                this.classList.add('expanded');
                                icon.src = "../images/minus.gif"; // Change to minus icon
                                getLocalitiesDetailsForLocalityID(this);
                            } else { // Collapse condition
                                this.classList.remove('expanded');
                                this.classList.add('collapsed');
                                icon.src = "../images/plus.gif"; // Change to plus icon
                                clearChildNodes(this);
                            }
                        });
                        ul.appendChild(li);
                    }
                });
                element.appendChild(ul);
            });
    }

    // Function to load details for a locality ID
    function getLocalitiesDetailsForLocalityID(element) {
        fetch('SuttLocalityDetails.txt')
            .then(response => response.text())
            .then(data => {
                const localityId = element.dataset.localityId;
                const lines = data.split('\n');
                let display = '';
                for (let i = 0; i < lines.length; i++) {
                    const line = lines[i];
                    if (line.trim() === `ID:${localityId}`) {
                        display += `<b>${lines[++i]}</b>`;
                        while (lines[++i].trim()) {
                            display += `<br>&nbsp&nbsp${lines[i]}`;
                        }
                        break;
                    }
                }
                if (display) {
                    const div = document.createElement('div');
                    div.classList.add('details-div'); // Add specific class for identification
                    div.innerHTML = display;
                    element.appendChild(div);
                }
            });
    }

    // Function to clear child nodes
    function clearChildNodes(element) {
        const children = Array.from(element.children);
        children.forEach(child => {
            if (!child.classList.contains('node-content') && !child.classList.contains('expand-collapse') && child.tagName !== 'IMG') {
                element.removeChild(child);
            }
        });
    }
});
