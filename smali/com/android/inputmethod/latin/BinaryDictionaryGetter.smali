.class Lcom/android/inputmethod/latin/BinaryDictionaryGetter;
.super Ljava/lang/Object;
.source "BinaryDictionaryGetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/BinaryDictionaryGetter$DictPackSettings;
    }
.end annotation


# static fields
.field private static final COMMON_PREFERENCES_NAME:Ljava/lang/String; = "LatinImeDictPrefs"

.field private static final EMPTY_FILE_ARRAY:[Ljava/io/File;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->TAG:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    sput-object v0, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    .line 38
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static getCacheDirectoryForLocale(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "locale"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    invoke-static {p0}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->replaceFileNameDangerousCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "relativeDirectoryName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getWordListCacheDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 125
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 124
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "absoluteDirectoryName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v1, "directory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 129
    sget-object v3, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not create the directory for locale"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    return-object v0
.end method

.method public static getCacheFileName(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    invoke-static {p0}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->replaceFileNameDangerousCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getCacheDirectoryForLocale(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getCachedDirectoryList(Landroid/content/Context;)[Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getWordListCacheDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getCachedWordLists(Ljava/lang/String;Landroid/content/Context;)[Ljava/io/File;
    .locals 11
    .param p0, "locale"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 225
    invoke-static {p1}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getCachedDirectoryList(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v3

    .line 226
    .local v3, "directoryList":[Ljava/io/File;
    if-nez v3, :cond_0

    sget-object v6, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    .line 241
    :goto_0
    return-object v6

    .line 227
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v0, "cacheFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    array-length v9, v3

    move v8, v7

    :goto_1
    if-lt v8, v9, :cond_1

    .line 240
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    goto :goto_0

    .line 228
    :cond_1
    aget-object v2, v3, v8

    .line 229
    .local v2, "directory":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_3

    .line 228
    :cond_2
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_1

    .line 230
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getWordListIdFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "dirLocale":Ljava/lang/String;
    invoke-static {v1, p0}, Lcom/android/inputmethod/latin/LocaleUtils;->getMatchLevel(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/android/inputmethod/latin/LocaleUtils;->isMatch(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 232
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 233
    .local v5, "wordLists":[Ljava/io/File;
    if-eqz v5, :cond_2

    .line 234
    array-length v10, v5

    move v6, v7

    :goto_2
    if-ge v6, v10, :cond_2

    aget-object v4, v5, v6

    .line 235
    .local v4, "wordList":Ljava/io/File;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 241
    .end local v1    # "dirLocale":Ljava/lang/String;
    .end local v2    # "directory":Ljava/io/File;
    .end local v4    # "wordList":Ljava/io/File;
    .end local v5    # "wordLists":[Ljava/io/File;
    :cond_4
    sget-object v6, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/io/File;

    goto :goto_0
.end method

.method public static getDictionaryFiles(Ljava/util/Locale;Landroid/content/Context;I)Ljava/util/List;
    .locals 20
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fallbackResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/latin/AssetFileAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    invoke-static/range {p0 .. p1}, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->cacheWordListsFromContentProvider(Ljava/util/Locale;Landroid/content/Context;)Ljava/util/List;

    .line 278
    invoke-virtual/range {p0 .. p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getCachedWordLists(Ljava/lang/String;Landroid/content/Context;)[Ljava/io/File;

    move-result-object v4

    .line 280
    .local v4, "cachedWordLists":[Ljava/io/File;
    invoke-static/range {p0 .. p0}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getMainDictId(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    .line 282
    .local v13, "mainDictId":Ljava/lang/String;
    new-instance v5, Lcom/android/inputmethod/latin/BinaryDictionaryGetter$DictPackSettings;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter$DictPackSettings;-><init>(Landroid/content/Context;)V

    .line 284
    .local v5, "dictPackSettings":Lcom/android/inputmethod/latin/BinaryDictionaryGetter$DictPackSettings;
    const/4 v10, 0x0

    .line 285
    .local v10, "foundMainDict":Z
    const/4 v9, 0x0

    .line 286
    .local v9, "foundAnySoftDict":Z
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v8, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/inputmethod/latin/AssetFileAddress;>;"
    array-length v0, v4

    move/from16 v17, v0

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_1

    .line 301
    invoke-static/range {p1 .. p1}, LDictionaryPackage/DicatinaryPackage;->getAllBuilders(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .line 303
    .local v3, "DictionaryBuilderASK":Ljava/util/ArrayList;, "Ljava/util/ArrayList<LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 305
    .local v14, "size":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-lt v11, v14, :cond_5

    .line 327
    :goto_2
    if-nez v9, :cond_0

    if-nez v10, :cond_0

    invoke-virtual {v5, v13}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter$DictPackSettings;->isWordListActive(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 328
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->loadFallbackResource(Landroid/content/Context;ILjava/util/Locale;)Lcom/android/inputmethod/latin/AssetFileAddress;

    move-result-object v7

    .line 330
    .local v7, "fallbackAsset":Lcom/android/inputmethod/latin/AssetFileAddress;
    if-eqz v7, :cond_0

    .line 331
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    .end local v7    # "fallbackAsset":Lcom/android/inputmethod/latin/AssetFileAddress;
    :cond_0
    return-object v8

    .line 288
    .end local v3    # "DictionaryBuilderASK":Ljava/util/ArrayList;, "Ljava/util/ArrayList<LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;>;"
    .end local v11    # "i":I
    .end local v14    # "size":I
    :cond_1
    aget-object v6, v4, v16

    .line 289
    .local v6, "f":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getWordListIdFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 290
    .local v15, "wordListId":Ljava/lang/String;
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 291
    const/4 v10, 0x1

    .line 293
    :cond_2
    invoke-virtual {v5, v15}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter$DictPackSettings;->isWordListActive(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 288
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 294
    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 295
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/inputmethod/latin/AssetFileAddress;->makeFromFileName(Ljava/lang/String;)Lcom/android/inputmethod/latin/AssetFileAddress;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 297
    :cond_4
    sget-object v18, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->TAG:Ljava/lang/String;

    const-string v19, "Found a cached dictionary file but cannot read it"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 307
    .end local v6    # "f":Ljava/io/File;
    .end local v15    # "wordListId":Ljava/lang/String;
    .restart local v3    # "DictionaryBuilderASK":Ljava/util/ArrayList;, "Ljava/util/ArrayList<LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;>;"
    .restart local v11    # "i":I
    .restart local v14    # "size":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    .line 308
    .local v12, "lang":Ljava/lang/String;
    const-string v16, "he"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    const-string v12, "iw"

    .line 309
    :cond_6
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;

    invoke-interface/range {v16 .. v16}, LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;->getLanguage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 313
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;

    invoke-interface/range {v16 .. v16}, LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;->getPackageContext()Landroid/content/Context;

    move-result-object v17

    .line 314
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;

    invoke-interface/range {v16 .. v16}, LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;->getDictionaryResourceId()I

    move-result v16

    .line 313
    move-object/from16 v0, v17

    move/from16 v1, v16

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->loadAnySoftDictioarny(Landroid/content/Context;ILjava/util/Locale;)Lcom/android/inputmethod/latin/AssetFileAddress;

    move-result-object v7

    .line 315
    .restart local v7    # "fallbackAsset":Lcom/android/inputmethod/latin/AssetFileAddress;
    if-eqz v7, :cond_7

    .line 316
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    const/4 v9, 0x1

    .line 318
    goto/16 :goto_2

    .line 305
    .end local v7    # "fallbackAsset":Lcom/android/inputmethod/latin/AssetFileAddress;
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1
.end method

.method private static getMainDictId(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 256
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getWordListCacheDirectory(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dicts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getWordListIdFromFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "fname"    # Ljava/lang/String;

    .prologue
    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 109
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 100
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 101
    .local v0, "codePoint":I
    const/16 v4, 0x25

    if-eq v4, v0, :cond_1

    .line 102
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 99
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_1
    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v2, 0x7

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 105
    .local v1, "encodedCodePoint":I
    add-int/lit8 v2, v2, 0x6

    .line 106
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static isFileNameCharacter(I)Z
    .locals 2
    .param p0, "codePoint"    # I

    .prologue
    const/4 v0, 0x1

    .line 64
    const/16 v1, 0x30

    if-lt p0, v1, :cond_1

    const/16 v1, 0x39

    if-gt p0, v1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    const/16 v1, 0x41

    if-lt p0, v1, :cond_2

    const/16 v1, 0x5a

    if-le p0, v1, :cond_0

    .line 66
    :cond_2
    const/16 v1, 0x61

    if-lt p0, v1, :cond_3

    const/16 v1, 0x7a

    if-le p0, v1, :cond_0

    .line 67
    :cond_3
    const/16 v1, 0x5f

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadAnySoftDictioarny(Landroid/content/Context;ILjava/util/Locale;)Lcom/android/inputmethod/latin/AssetFileAddress;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fallbackResId"    # I
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 343
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 344
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {v1, p1}, Lcom/android/inputmethod/latin/Utils;->openRawResourceFd(Landroid/content/res/Resources;I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 346
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    if-nez v0, :cond_0

    .line 347
    sget-object v2, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Found the resource but cannot read it. Is it compressed? resId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 347
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v2, 0x0

    .line 351
    :goto_0
    return-object v2

    .line 352
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    .line 351
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/inputmethod/latin/AssetFileAddress;->makeFromFileNameAndOffset(Ljava/lang/String;JJ)Lcom/android/inputmethod/latin/AssetFileAddress;

    move-result-object v2

    goto :goto_0
.end method

.method private static loadFallbackResource(Landroid/content/Context;ILjava/util/Locale;)Lcom/android/inputmethod/latin/AssetFileAddress;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fallbackResId"    # I
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 161
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {v1, p2}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v2

    .line 162
    .local v2, "savedLocale":Ljava/util/Locale;
    invoke-static {v1, p1}, Lcom/android/inputmethod/latin/Utils;->openRawResourceFd(Landroid/content/res/Resources;I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 163
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    invoke-static {v1, v2}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    .line 165
    if-nez v0, :cond_0

    .line 166
    sget-object v3, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Found the resource but cannot read it. Is it compressed? resId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 166
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v3, 0x0

    .line 170
    :goto_0
    return-object v3

    .line 171
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    .line 170
    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/inputmethod/latin/AssetFileAddress;->makeFromFileNameAndOffset(Ljava/lang/String;JJ)Lcom/android/inputmethod/latin/AssetFileAddress;

    move-result-object v3

    goto :goto_0
.end method

.method private static replaceFileNameDangerousCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 83
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 84
    .local v0, "codePoint":I
    invoke-static {v0}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->isFileNameCharacter(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 82
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_1
    const/4 v3, 0x0

    const-string v4, "%%%1$06x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
