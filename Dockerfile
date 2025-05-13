FROM perl:5.38-slim

WORKDIR /data

# Install system dependencies (including for OLE::Storage_Lite)
RUN apt update && \
    apt install -y --no-install-recommends \
        wget \
        build-essential \
        libxml-parser-perl && \
    cpan App::cpanminus && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

# Install Per modules
RUN cpanm \
    --notest \
    Crypt::RC4 \
    Digest::CRC \
    Crypt::Blowfish \
    Archive::Zip \
    File::Basename \
    List::Util \
    Getopt::Long \
    Text::CSV

# Install OLE::Storage_Lite
RUN cpanm --force OLE::Storage_Lite

# cp entrypoint.sh
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
