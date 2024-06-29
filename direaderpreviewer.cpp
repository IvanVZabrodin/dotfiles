#include <string>
#include <filesystem>
#include <iostream>
namespace fs = std::filesystem;

#define FOLDERICON " "
#define FILEICON " "

int main(int argc, char** argv) {

	std::string path = std::string(argv[1]);
	for (const auto& entry : fs::directory_iterator(path)) {
		if (entry.is_directory()) {
			std::cout << FOLDERICON << *(--entry.path().end()) << "\n";
		} else if (entry.is_regular_file()) {
			std::cout << FILEICON << entry.path().filename() << "\n";
		}
	}
}
