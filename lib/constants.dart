// Database.
const databaseName = 'restler.db';
const databaseVersion = 12;

// APP.
const appVersion = '0.17.5';
const authorEmail = 'tiago.henrique.cco@gmail.com';
const appWebsite = 'https://restler.tiagohm.dev';
const issueUrl = 'https://github.com/tiagohm/restler/issues';
const privacyPolicyUrl = 'https://restler.tiagohm.dev/privacy-policy.html';
const playStoreUrl =
    'https://play.google.com/store/apps/details?id=br.tiagohm.restler';
const translationsUrl =
    'https://github.com/tiagohm/restler/tree/master/translations';

const v0_17_0 = '0.17.x';
const v0_16_0 = '0.16.x';
const v0_15_0 = '0.15.x';
const v0_14_0 = '0.14.x';
const v0_13_0 = '0.13.x';
const v0_12_0 = '0.12.x';
const v0_11_0 = '0.11.x';
const v0_10_0 = '0.10.x';
const v0_9_0 = '0.9.x';
const v0_8_0 = '0.8.x';
const v0_7_0 = '0.7.x';
const v0_6_0 = '0.6.x';
const v0_5_0 = '0.5.x';
const v0_4_0 = '0.4.x';
const v0_3_0 = '0.3.x';
const v0_2_0 = '0.2.x';
const v0_1_0 = '0.1.x';

const changelog = <String, List<String>>{
  v0_17_0: [
    'Added option to keep equal sign for empty query',
    'Added Connection pool (HTTP session) support',
    'Added Simplified Chinese translation (Thanks @joytou)',
    'Added support to choose directory when exporting a collection',
    'Bug fixes',
  ],
  v0_16_0: [
    'Added support to Workspaces 🎉',
    'Added support to Environment Variables 🎉',
    'Added support to Request description',
    'Fixed Postman import/export bugs',
    'Fixed Insomnia import/export bugs',
    'Improved Cache to use LRU replacement strategy',
    'Fixed Hawk Auth bug',
    'Fixed DNS bug',
    'Added the all Postman dynamic variables',
    'Various Bug fixes',
  ],
  v0_15_0: [
    'Added support to Response Caching (RFC 7234) 🎉',
    'Added support to SSE (Server-Sent Event) 🎉',
    'Added option to enable cache per request',
    'Added option to enable/disable cookies',
    'Minor bug fixes',
  ],
  v0_14_0: [
    'Added support to DNS 🎉',
    'Added Timeline feature to Response tab',
    'Optimized to display large response body',
    'Minor bug fixes',
  ],
  v0_13_0: [
    'Added support to Brotli decompression 🎉',
    'Minor bug fixes',
  ],
  v0_12_0: [
    'Added support to proxy 🎉',
    'Added request settings',
    'Added option to configure send cookies per request',
    'Added option to configure store cookies per request',
    'Added support to WebSocket (beta)',
    'Minor bug fixes',
  ],
  v0_11_0: [
    'Added support to Postman Collections 🎉',
    'Minor bug fixes',
  ],
  v0_10_0: [
    'Added support to select & copy the response body 🎉',
    'Added support to HTTP2 🎉',
    'Added support to add Client Certificate 🎉',
    'Added support to Restler format (with encryption) 🎉',
    'Added support to import collection from URL',
    'Added support to import collection within a folder',
    'Added light theme',
    'New HTTP Client library: restio',
    'Added option to choose request body content-type',
    'Added Latin Spanish language (Thanks @taksumaki)',
    'Added option to change request User-Agent',
    'Made various UI enhancements',
    'Improved performance',
    'Made various bug fixes'
  ],
  v0_9_0: [
    'Added support to tabs 🎉',
    'Added ability to restore automatically last tabs on startup',
    'Added support to change response body theme',
    'Added support to validate SSL certificates',
    'Improved performance',
    'Minor UI fixes',
    'Minor bug fixes'
  ],
  v0_8_0: [
    'Added ability to choose which cookie will be sent',
    'Added ability to not save requests to history',
    'Added ability to save response body as file',
    'Added support to limit the history size',
    'Added donation button to support this app development',
    'Added new logo',
    'Minor UI fixes',
    'Minor bug fixes'
  ],
  v0_7_0: [
    'Added option in Settings to allow send requests over Wi-Fi only',
    'Added support for responses that return images (JPEG, PNG, SVG, WEBP)',
    'Minor UI fixes',
    'Minor bug fixes'
  ],
  v0_6_0: [
    'Added Digest authentication method 🎉',
    'Added ability to beautify the response body for JSON 🎉',
    'Added ability to copy headers and cookies values from response',
    'Added max redirects option in Settings',
    'Added option to disable following redirects in Settings',
    'Added support to automatically handle request redirects',
    'Minor UI fixes',
    'Minor bug fixes'
  ],
  v0_5_0: [
    'Added ability to syntax highlight the response body for JSON 🎉',
    'Added Brazilian Portuguese language',
    'Minor UI fixes',
    'Minor bug fixes'
  ],
  v0_4_0: [
    'Added support to Cookies 🎉',
    'Added support for exporting Insomnia Collections 🎉',
    'Added support to import cookies from Insomnia',
    'Minor UI fixes',
    'Minor bug fixes'
  ],
  v0_3_0: [
    'Added support for importing Insomnia Collections 🎉',
    'Added Hawk authentication method 🎉',
    'Added support for custom HTTP methods 🎉',
    'Added ability to duplicate requests',
    'Added ability to hide keyboard if user clicks out of input',
    'Added autocomplete support for header fields',
    'Added option to reset file for Multipart Form field',
    'Minor bug fixes'
  ],
  v0_2_0: [
    'Added Multipart, Form Url Encoded and Binary File Request Body Type 🎉',
    'Added button to cancel the current request',
    "Added numeric counter on Request's Body tab",
    'Minor bug fixes'
  ],
  v0_1_0: ['Initial Release'],
};

const translators = {
  '🇧🇷 pt-BR': ['tiagohm'],
  '🇺🇸 en-US': ['tiagohm'],
  '🇪🇸 es-LA': ['taksumaki'],
  '🇨🇳 zh-CN': ['joytou'],
};

// https://github.com/getinsomnia/insomnia/blob/master/packages/insomnia-app/app/datasets/

// Header names.
const headerNames = [
  'content-type',
  'content-length',
  'accept',
  'accept-charset',
  'accept-encoding',
  'accept-language',
  'accept-datetime',
  'authorization',
  'cache-control',
  'cookie',
  'connection',
  'content-md5',
  'date',
  'expect',
  'forwarded',
  'from',
  'host',
  'if-match',
  'if-modified-since',
  'if-none-match',
  'if-range',
  'if-unmodified-since',
  'max-forwards',
  'origin',
  'pragma',
  'proxy-authorization',
  'range',
  'referer',
  'te',
  'user-agent',
  'upgrade',
  'via',
  'warning',
];

const contentTypes = [
  'application/json',
  'application/xml',
  'application/x-www-form-urlencoded',
  'multipart/form-data',
  'multipart/byteranges',
  'application/octet-stream',
  'text/plain',
  'application/javascript',
  'application/pdf',
  'text/html',
  'image/png',
  'image/jpeg',
  'image/gif',
  'image/webp',
  'text/css',
  'application/x-pkcs12',
  'application/xhtml+xml',
  'application/andrew-inset',
  'application/applixware',
  'application/atom+xml',
  'application/atomcat+xml',
  'application/atomsvc+xml',
  'application/bdoc',
  'application/cu-seeme',
  'application/davmount+xml',
  'application/docbook+xml',
  'application/dssc+xml',
  'application/ecmascript',
  'application/epub+zip',
  'application/exi',
  'application/font-tdpfr',
  'application/font-woff',
  'application/font-woff2',
  'application/geo+json',
  'application/graphql',
  'application/java-serialized-object',
  'application/json5',
  'application/jsonml+json',
  'application/ld+json',
  'application/lost+xml',
  'application/manifest+json',
  'application/mp4',
  'application/msword',
  'application/mxf',
  'application/oda',
  'application/ogg',
  'application/pgp-encrypted',
  'application/pgp-signature',
  'application/pics-rules',
  'application/pkcs10',
  'application/pkcs7-mime',
  'application/pkcs7-signature',
  'application/pkcs8',
  'application/postscript',
  'application/pskc+xml',
  'application/resource-lists+xml',
  'application/resource-lists-diff+xml',
  'application/rls-services+xml',
  'application/rsd+xml',
  'application/rss+xml',
  'application/rtf',
  'application/sdp',
  'application/shf+xml',
  'application/timestamped-data',
  'application/vnd.android.package-archive',
  'application/vnd.api+json',
  'application/vnd.apple.installer+xml',
  'application/vnd.apple.mpegurl',
  'application/vnd.apple.pkpass',
  'application/vnd.bmi',
  'application/vnd.curl.car',
  'application/vnd.curl.pcurl',
  'application/vnd.dna',
  'application/vnd.google-apps.document',
  'application/vnd.google-apps.presentation',
  'application/vnd.google-apps.spreadsheet',
  'application/vnd.hal+xml',
  'application/vnd.handheld-entertainment+xml',
  'application/vnd.macports.portpkg',
  'application/vnd.unity',
  'application/vnd.zul',
  'application/widget',
  'application/wsdl+xml',
  'application/x-7z-compressed',
  'application/x-ace-compressed',
  'application/x-bittorrent',
  'application/x-bzip',
  'application/x-bzip2',
  'application/x-cfs-compressed',
  'application/x-chrome-extension',
  'application/x-cocoa',
  'application/x-envoy',
  'application/x-eva',
  'font/opentype',
  'application/x-gca-compressed',
  'application/x-gtar',
  'application/x-hdf',
  'application/x-httpd-php',
  'application/x-install-instructions',
  'application/x-latex',
  'application/x-lua-bytecode',
  'application/x-lzh-compressed',
  'application/x-ms-application',
  'application/x-ms-shortcut',
  'application/x-ndjson',
  'application/x-perl',
  'application/x-pkcs7-certificates',
  'application/x-pkcs7-certreqresp',
  'application/x-rar-compressed',
  'application/x-sh',
  'application/x-sql',
  'application/x-subrip',
  'application/x-t3vm-image',
  'application/x-tads',
  'application/x-tar',
  'application/x-tcl',
  'application/x-tex',
  'application/x-x509-ca-cert',
  'application/xop+xml',
  'application/xslt+xml',
  'application/zip',
  'audio/3gpp',
  'audio/adpcm',
  'audio/basic',
  'audio/midi',
  'audio/mpeg',
  'audio/mp4',
  'audio/ogg',
  'audio/silk',
  'audio/wave',
  'audio/webm',
  'audio/x-aac',
  'audio/x-aiff',
  'audio/x-caf',
  'audio/x-flac',
  'audio/xm',
  'image/bmp',
  'image/cgm',
  'image/sgi',
  'image/svg+xml',
  'image/tiff',
  'image/x-3ds',
  'image/x-freehand',
  'image/x-icon',
  'image/x-jng',
  'image/x-mrsid-image',
  'image/x-pcx',
  'image/x-pict',
  'image/x-rgb',
  'image/x-tga',
  'message/rfc822',
  'text/cache-manifest',
  'text/calendar',
  'text/coffeescript',
  'text/csv',
  'text/hjson',
  'text/jade',
  'text/jsx',
  'text/less',
  'text/mathml',
  'text/n3',
  'text/richtext',
  'text/sgml',
  'text/slim',
  'text/stylus',
  'text/tab-separated-values',
  'text/uri-list',
  'text/vcard',
  'text/vnd.curl',
  'text/vnd.fly',
  'text/vtt',
  'text/x-asm',
  'text/x-c',
  'text/x-component',
  'text/x-fortran',
  'text/x-handlebars-template',
  'text/x-java-source',
  'text/x-lua',
  'text/x-markdown',
  'text/x-nfo',
  'text/x-opml',
  'text/x-pascal',
  'text/x-processing',
  'text/x-sass',
  'text/x-scss',
  'text/x-vcalendar',
  'text/xml',
  'text/yaml',
  'video/3gpp',
  'video/3gpp2',
  'video/h261',
  'video/h263',
  'video/h264',
  'video/jpeg',
  'video/jpm',
  'video/mj2',
  'video/mp2t',
  'video/mp4',
  'video/mpeg',
  'video/ogg',
  'video/quicktime',
  'video/webm',
  'video/x-f4v',
  'video/x-fli',
  'video/x-flv',
  'video/x-m4v',
];

const encodings = [
  'gzip',
  'compress',
  'deflate',
  'br',
  'identity',
];

const charsets = [
  'utf-8',
  'us-ascii',
  '950',
  'ASMO-708',
  'CP1026',
  'CP870',
  'DOS-720',
  'DOS-862',
  'EUC-CN',
  'IBM437',
  'Johab',
  'Windows-1252',
  'X-EBCDIC-Spain',
  'big5',
  'cp866',
  'csISO2022JP',
  'ebcdic-cp-us',
  'euc-kr',
  'gb2312',
  'hz-gb-2312',
  'ibm737',
  'ibm775',
  'ibm850',
  'ibm852',
  'ibm857',
  'ibm861',
  'ibm869',
  'iso-2022-jp',
  'iso-2022-jp',
  'iso-2022-kr',
  'iso-8859-1',
  'iso-8859-15',
  'iso-8859-2',
  'iso-8859-3',
  'iso-8859-4',
  'iso-8859-5',
  'iso-8859-6',
  'iso-8859-7',
  'iso-8859-8',
  'iso-8859-8-i',
  'iso-8859-9',
  'koi8-r',
  'koi8-u',
  'ks_c_5601-1987',
  'macintosh',
  'shift_jis',
  'unicode',
  'unicodeFFFE',
  'utf-7',
  'windows-1250',
  'windows-1251',
  'windows-1253',
  'windows-1254',
  'windows-1255',
  'windows-1256',
  'windows-1257',
  'windows-1258',
  'windows-874',
  'x-Chinese-CNS',
  'x-Chinese-Eten',
  'x-EBCDIC-Arabic',
  'x-EBCDIC-CyrillicRussian',
  'x-EBCDIC-CyrillicSerbianBulgarian',
  'x-EBCDIC-DenmarkNorway',
  'x-EBCDIC-FinlandSweden',
  'x-EBCDIC-Germany',
  'x-EBCDIC-Greek',
  'x-EBCDIC-GreekModern',
  'x-EBCDIC-Hebrew',
  'x-EBCDIC-Icelandic',
  'x-EBCDIC-Italy',
  'x-EBCDIC-JapaneseAndJapaneseLatin',
  'x-EBCDIC-JapaneseAndKana',
  'x-EBCDIC-JapaneseAndUSCanada',
  'x-EBCDIC-JapaneseKatakana',
  'x-EBCDIC-KoreanAndKoreanExtended',
  'x-EBCDIC-KoreanExtended',
  'x-EBCDIC-SimplifiedChinese',
  'x-EBCDIC-Thai',
  'x-EBCDIC-TraditionalChinese',
  'x-EBCDIC-Turkish',
  'x-EBCDIC-UK',
  'x-Europa',
  'x-IA5',
  'x-IA5-German',
  'x-IA5-Norwegian',
  'x-IA5-Swedish',
  'x-ebcdic-cp-us-euro',
  'x-ebcdic-denmarknorway-euro',
  'x-ebcdic-finlandsweden-euro',
  'x-ebcdic-finlandsweden-euro',
  'x-ebcdic-france-euro',
  'x-ebcdic-germany-euro',
  'x-ebcdic-icelandic-euro',
  'x-ebcdic-international-euro',
  'x-ebcdic-italy-euro',
  'x-ebcdic-spain-euro',
  'x-ebcdic-uk-euro',
  'x-euc-jp',
  'x-iscii-as',
  'x-iscii-be',
  'x-iscii-de',
  'x-iscii-gu',
  'x-iscii-ka',
  'x-iscii-ma',
  'x-iscii-or',
  'x-iscii-pa',
  'x-iscii-ta',
  'x-iscii-te',
  'x-mac-arabic',
  'x-mac-ce',
  'x-mac-chinesesimp',
  'x-mac-cyrillic',
  'x-mac-greek',
  'x-mac-hebrew',
  'x-mac-icelandic',
  'x-mac-japanese',
  'x-mac-korean',
  'x-mac-turkish',
];

const cacheControlValues = [
  'max-age',
  'max-stale',
  'min-fresh',
  'no-cache',
  'no-store',
  'no-transform',
  'only-if-cached',
  'must-revalidate',
  'no-transform',
  'public',
  'private',
  'proxy-revalidate',
  's-maxage',
  'immutable',
  'stale-while-revalidate',
  'stale-if-error'
];

const otherHeaderValues = [
  'realm',
  'charset',
  'timeout',
  'max',
];

const headerValues = [
  ...contentTypes,
  ...encodings,
  ...charsets,
  ...cacheControlValues,
  ...otherHeaderValues,
];

const postmanDynamicVariables = [
  'guid',
  'randomAbbreviation',
  'randomAbstractImage',
  'randomAdjective',
  'randomAlphaNumeric',
  'randomAnimalsImage',
  'randomAvatarImage',
  'randomBankAccount',
  'randomBankAccountBic',
  'randomBankAccountIban',
  'randomBankAccountName',
  'randomBitcoin',
  'randomBoolean',
  'randomBs',
  'randomBsAdjective',
  'randomBsBuzz',
  'randomBsNoun',
  'randomBusinessImage',
  'randomCatchPhrase',
  'randomCatchPhraseAdjective',
  'randomCatchPhraseDescriptor',
  'randomCatchPhraseNoun',
  'randomCatsImage',
  'randomCity',
  'randomCityImage',
  'randomCityPrefix',
  'randomCitySuffix',
  'randomColor',
  'randomCommonFileExt',
  'randomCommonFileName',
  'randomCommonFileType',
  'randomCompanyName',
  'randomCompanySuffix',
  'randomCountry',
  'randomCountryCode',
  'randomCurrencyAmount',
  'randomCurrencyCode',
  'randomCurrencyName',
  'randomCurrencySymbol',
  'randomDatabaseCollation',
  'randomDatabaseColumn',
  'randomDatabaseEngine',
  'randomDatabaseType',
  'randomDateFuture',
  'randomDatePast',
  'randomDateRecent',
  'randomDepartment',
  'randomDirectoryPath',
  'randomDomainName',
  'randomDomainSuffix',
  'randomDomainWord',
  'randomEmail',
  'randomExampleEmail',
  'randomFashionImage',
  'randomFileExt',
  'randomFileName',
  'randomFilePath',
  'randomFileType',
  'randomFirstName',
  'randomFoodImage',
  'randomFullName',
  'randomHexColor',
  'randomIP',
  'randomIPV6',
  'randomImageDataUri',
  'randomImageUrl',
  'randomIngverb',
  'randomInt',
  'randomJobArea',
  'randomJobDescriptor',
  'randomJobTitle',
  'randomJobType',
  'randomLastName',
  'randomLatitude',
  'randomLongitude',
  'randomLoremLines',
  'randomLoremParagraph',
  'randomLoremParagraphs',
  'randomLoremSentence',
  'randomLoremSentences',
  'randomLoremSlug',
  'randomLoremText',
  'randomLoremWord',
  'randomLoremWords',
  'randomMACAddress',
  'randomMimeType',
  'randomMonth',
  'randomNamePrefix',
  'randomNameSuffix',
  'randomNameTitle',
  'randomNatureImage',
  'randomNightlifeImage',
  'randomNoun',
  'randomPassword',
  'randomPeopleImage',
  'randomPhoneFormats',
  'randomPhoneNumber',
  'randomPhoneNumberFormat',
  'randomPhrase',
  'randomPrice',
  'randomProduct',
  'randomProductAdjective',
  'randomProductMaterial',
  'randomProductName',
  'randomProtocol',
  'randomSecondaryAddress',
  'randomSemver',
  'randomSportsImage',
  'randomState',
  'randomStateAbbr',
  'randomStreetAddress',
  'randomStreetName',
  'randomStreetPrefix',
  'randomStreetSuffix',
  'randomTechnicsImage',
  'randomTransactionType',
  'randomTransportImage',
  'randomUUID',
  'randomUrl',
  'randomUserName',
  'randomVerb',
  'randomWeekday',
  'randomWord',
  'randomWords',
  'randomZipCode',
  'timestamp',
];
