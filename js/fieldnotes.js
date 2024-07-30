document.addEventListener('DOMContentLoaded', function() {
    const treeCollectors = document.getElementById('treeCollectors');
    loadUniqueLastNames();

    function loadUniqueLastNames() {
        fetch('../data/SuttkusFieldNotesLastNames.txt')
            .then(response => response.text())
            .then(data => {
                const lines = data.split('\n').slice(1); // Skip header
                lines.forEach(line => {
                    if (line.trim()) {
                        const [_, lastName] = line.split('\t');
                        const newNode = document.createElement('li');
                        newNode.innerHTML = `${lastName} <a target="_blank" href="details.html?LastName=${lastName}">Print View</a>`;
                        newNode.dataset.lastName = lastName;
                        newNode.addEventListener('click', () => getNamesForUniqueLastname(newNode));
                        treeCollectors.appendChild(newNode);
                    }
                });
            });
    }

    function getNamesForUniqueLastname(selectedNode) {
        const lastName = selectedNode.dataset.lastName;
        fetch('../data/SuttkusFieldNotesNames.txt')
            .then(response => response.text())
            .then(data => {
                const lines = data.split('\n').slice(1); // Skip header
                selectedNode.innerHTML += '<ul>';
                lines.forEach(line => {
                    const [_, name, lName] = line.split('\t');
                    if (lName === lastName) {
                        const newNode = document.createElement('li');
                        newNode.innerHTML = `${name} <a target="_blank" href="details.html?FullName=${name}">Print View</a>`;
                        newNode.dataset.fullName = name;
                        newNode.addEventListener('click', () => getLocalitiesForName(newNode));
                        selectedNode.querySelector('ul').appendChild(newNode);
                    }
                });
                selectedNode.innerHTML += '</ul>';
            });
    }

    function getLocalitiesForName(selectedNode) {
        const fullName = selectedNode.dataset.fullName;
        fetch('../data/SuttkusFieldNotesMain.txt')
            .then(response => response.text())
            .then(data => {
                const lines = data.split('\n').slice(1); // Skip header
                selectedNode.innerHTML += '<ul>';
                lines.forEach(line => {
                    const [localityID, , , verbatimCollectors, fieldNo, , verbatimDate] = line.split('\t');
                    if (verbatimCollectors.includes(fullName)) {
                        const newNode = document.createElement('li');
                        newNode.textContent = `${verbatimDate}; ${fieldNo}; ${verbatimCollectors}`;
                        newNode.dataset.localityID = localityID;
                        newNode.addEventListener('click', () => getLocalitiesDetailsForLocalityID(newNode));
                        selectedNode.querySelector('ul').appendChild(newNode);
                    }
                });
                selectedNode.innerHTML += '</ul>';
            });
    }

    function getLocalitiesDetailsForLocalityID(selectedNode) {
        const localityID = selectedNode.dataset.localityID;
        fetch('../data/SuttLocalityDetails.txt')
            .then(response => response.text())
            .then(data => {
                const lines = data.split('\n');
                const display = [];
                let collecting = false;

                lines.forEach(line => {
                    if (line.startsWith(`ID:${localityID}`)) {
                        collecting = true;
                    }
                    if (collecting) {
                        if (line.trim()) {
                            display.push(line);
                        } else {
                            collecting = false;
                        }
                    }
                });

                const newNode = document.createElement('li');
                newNode.innerHTML = display.join('<br>');
                selectedNode.appendChild(newNode);
            });
    }
});
