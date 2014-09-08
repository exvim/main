$0 ~ file_filter && $0 ~ folder_filter && $0 !~ /.*\\\..*/ {
    print ($0)
}

