.class public Lcom/android/inputmethod/latin/DictionaryFactory;
.super Ljava/lang/Object;
.source "DictionaryFactory.java"


# static fields
.field private static final PLACEHOLDER_LENGTH:J = 0x22L

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/inputmethod/latin/DictionaryFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/DictionaryFactory;->TAG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static createBinaryDictionary(Landroid/content/Context;ILjava/util/Locale;)Lcom/android/inputmethod/latin/BinaryDictionary;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 102
    const/4 v8, 0x0

    .line 104
    .local v8, "afd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 105
    .local v11, "res":Landroid/content/res/Resources;
    if-eqz p2, :cond_3

    .line 106
    invoke-static {v11, p2}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v12

    .line 107
    .local v12, "savedLocale":Ljava/util/Locale;
    invoke-static {v11, p1}, Lcom/android/inputmethod/latin/Utils;->openRawResourceFd(Landroid/content/res/Resources;I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    .line 108
    invoke-static {v11, v12}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    .line 112
    .end local v12    # "savedLocale":Ljava/util/Locale;
    :goto_0
    if-nez v8, :cond_4

    .line 113
    sget-object v0, Lcom/android/inputmethod/latin/DictionaryFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Found the resource but it is compressed. resId="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_0
    if-eqz v8, :cond_1

    .line 132
    :try_start_1
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 114
    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 128
    .end local v11    # "res":Landroid/content/res/Resources;
    :cond_2
    :goto_2
    return-object v0

    .line 110
    .restart local v11    # "res":Landroid/content/res/Resources;
    :cond_3
    :try_start_2
    invoke-static {v11, p1}, Lcom/android/inputmethod/latin/Utils;->openRawResourceFd(Landroid/content/res/Resources;I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    goto :goto_0

    .line 116
    :cond_4
    invoke-static {v8}, Lcom/android/inputmethod/latin/DictionaryFactory;->isFullDictionary(Landroid/content/res/AssetFileDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 118
    .local v2, "sourceDir":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .local v10, "packagePath":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_6

    .line 121
    sget-object v0, Lcom/android/inputmethod/latin/DictionaryFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "sourceDir is not a file: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    if-eqz v8, :cond_5

    .line 132
    :try_start_3
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 122
    :cond_5
    :goto_3
    const/4 v0, 0x0

    goto :goto_2

    .line 124
    :cond_6
    :try_start_4
    new-instance v0, Lcom/android/inputmethod/latin/BinaryDictionary;

    .line 125
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    const/4 v7, 0x0

    move-object v1, p0

    .line 124
    invoke-direct/range {v0 .. v7}, Lcom/android/inputmethod/latin/BinaryDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;JJ[Lcom/android/inputmethod/latin/Flag;)V
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 130
    if-eqz v8, :cond_2

    .line 132
    :try_start_5
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 133
    :catch_0
    move-exception v1

    goto :goto_2

    .line 126
    .end local v2    # "sourceDir":Ljava/lang/String;
    .end local v10    # "packagePath":Ljava/io/File;
    .end local v11    # "res":Landroid/content/res/Resources;
    :catch_1
    move-exception v9

    .line 127
    .local v9, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_6
    sget-object v0, Lcom/android/inputmethod/latin/DictionaryFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Could not find the resource. resId="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 130
    if-eqz v8, :cond_7

    .line 132
    :try_start_7
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 128
    :cond_7
    :goto_4
    const/4 v0, 0x0

    goto :goto_2

    .line 129
    .end local v9    # "e":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v0

    .line 130
    if-eqz v8, :cond_8

    .line 132
    :try_start_8
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 137
    :cond_8
    :goto_5
    throw v0

    .line 133
    .restart local v11    # "res":Landroid/content/res/Resources;
    :catch_2
    move-exception v0

    goto :goto_1

    .restart local v2    # "sourceDir":Ljava/lang/String;
    .restart local v10    # "packagePath":Ljava/io/File;
    :catch_3
    move-exception v0

    goto :goto_3

    .end local v2    # "sourceDir":Ljava/lang/String;
    .end local v10    # "packagePath":Ljava/io/File;
    .end local v11    # "res":Landroid/content/res/Resources;
    .restart local v9    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_4
    move-exception v0

    goto :goto_4

    .end local v9    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_5
    move-exception v1

    goto :goto_5
.end method

.method public static createDictionaryForTest(Landroid/content/Context;Ljava/io/File;JJ[Lcom/android/inputmethod/latin/Flag;)Lcom/android/inputmethod/latin/Dictionary;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dictionary"    # Ljava/io/File;
    .param p2, "startOffset"    # J
    .param p4, "length"    # J
    .param p6, "flagArray"    # [Lcom/android/inputmethod/latin/Flag;

    .prologue
    .line 151
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Lcom/android/inputmethod/latin/BinaryDictionary;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/inputmethod/latin/BinaryDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;JJ[Lcom/android/inputmethod/latin/Flag;)V

    .line 156
    :goto_0
    return-object v0

    .line 155
    :cond_0
    sget-object v0, Lcom/android/inputmethod/latin/DictionaryFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find the file. path="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createDictionaryFromManager(Landroid/content/Context;Ljava/util/Locale;I)Lcom/android/inputmethod/latin/DictionaryCollection;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "fallbackResId"    # I

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/DictionaryFactory;->createDictionaryFromManager(Landroid/content/Context;Ljava/util/Locale;I[Lcom/android/inputmethod/latin/Flag;)Lcom/android/inputmethod/latin/DictionaryCollection;

    move-result-object v0

    return-object v0
.end method

.method public static createDictionaryFromManager(Landroid/content/Context;Ljava/util/Locale;I[Lcom/android/inputmethod/latin/Flag;)Lcom/android/inputmethod/latin/DictionaryCollection;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "fallbackResId"    # I
    .param p3, "flagArray"    # [Lcom/android/inputmethod/latin/Flag;

    .prologue
    .line 53
    if-nez p1, :cond_0

    .line 54
    sget-object v1, Lcom/android/inputmethod/latin/DictionaryFactory;->TAG:Ljava/lang/String;

    const-string v2, "No locale defined for dictionary"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v1, Lcom/android/inputmethod/latin/DictionaryCollection;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/inputmethod/latin/Dictionary;

    const/4 v3, 0x0

    invoke-static {p0, p2, p1}, Lcom/android/inputmethod/latin/DictionaryFactory;->createBinaryDictionary(Landroid/content/Context;ILjava/util/Locale;)Lcom/android/inputmethod/latin/BinaryDictionary;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/android/inputmethod/latin/DictionaryCollection;-><init>([Lcom/android/inputmethod/latin/Dictionary;)V

    .line 74
    :goto_0
    return-object v1

    .line 58
    :cond_0
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 60
    .local v9, "dictList":Ljava/util/List;, "Ljava/util/List<Lcom/android/inputmethod/latin/Dictionary;>;"
    invoke-static {p1, p0, p2}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getDictionaryFiles(Ljava/util/Locale;Landroid/content/Context;I)Ljava/util/List;

    move-result-object v8

    .line 61
    .local v8, "assetFileList":Ljava/util/List;, "Ljava/util/List<Lcom/android/inputmethod/latin/AssetFileAddress;>;"
    if-eqz v8, :cond_2

    .line 62
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 74
    :cond_2
    new-instance v1, Lcom/android/inputmethod/latin/DictionaryCollection;

    invoke-direct {v1, v9}, Lcom/android/inputmethod/latin/DictionaryCollection;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 62
    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/inputmethod/latin/AssetFileAddress;

    .line 64
    .local v10, "f":Lcom/android/inputmethod/latin/AssetFileAddress;
    new-instance v0, Lcom/android/inputmethod/latin/BinaryDictionary;

    iget-object v2, v10, Lcom/android/inputmethod/latin/AssetFileAddress;->mFilename:Ljava/lang/String;

    iget-wide v3, v10, Lcom/android/inputmethod/latin/AssetFileAddress;->mOffset:J

    iget-wide v5, v10, Lcom/android/inputmethod/latin/AssetFileAddress;->mLength:J

    move-object v1, p0

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/inputmethod/latin/BinaryDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;JJ[Lcom/android/inputmethod/latin/Flag;)V

    .line 65
    .local v0, "binaryDictionary":Lcom/android/inputmethod/latin/BinaryDictionary;
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/BinaryDictionary;->isValidDictionary()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static getDictionaryId(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/Long;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 186
    .local v5, "res":Landroid/content/res/Resources;
    invoke-static {v5, p1}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v7

    .line 188
    .local v7, "saveLocale":Ljava/util/Locale;
    invoke-static {v5}, Lcom/android/inputmethod/latin/Utils;->getMainDictionaryResourceId(Landroid/content/res/Resources;)I

    move-result v6

    .line 190
    .local v6, "resourceId":I
    invoke-static {p0}, LDictionaryPackage/DicatinaryPackage;->getAllBuilders(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 192
    .local v0, "DictionaryBuilderASK":Ljava/util/ArrayList;, "Ljava/util/ArrayList<LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 195
    .local v4, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v4, :cond_1

    .line 208
    :goto_1
    invoke-static {v5, v6}, Lcom/android/inputmethod/latin/Utils;->openRawResourceFd(Landroid/content/res/Resources;I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 209
    .local v1, "afd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v9

    const-wide/16 v11, 0x22

    cmp-long v9, v9, v11

    if-lez v9, :cond_4

    .line 210
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 213
    .local v8, "size":Ljava/lang/Long;
    :goto_2
    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_0
    :goto_3
    invoke-static {v5, v7}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    .line 218
    return-object v8

    .line 197
    .end local v1    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v8    # "size":Ljava/lang/Long;
    :cond_1
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, "lang":Ljava/lang/String;
    const-string v9, "he"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v3, "iw"

    .line 199
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;

    invoke-interface {v9}, LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 202
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;

    invoke-interface {v9}, LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;->getDictionaryResourceId()I

    move-result v6

    .line 203
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;

    invoke-interface {v9}, LDictionaryPackage/DicatinaryPackage$DictionaryBuilder;->getPackageContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 204
    goto :goto_1

    .line 195
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    .end local v3    # "lang":Ljava/lang/String;
    .restart local v1    # "afd":Landroid/content/res/AssetFileDescriptor;
    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    .line 214
    .restart local v8    # "size":Ljava/lang/Long;
    :catch_0
    move-exception v9

    goto :goto_3
.end method

.method public static isDictionaryAvailable(Landroid/content/Context;Ljava/util/Locale;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 168
    .local v2, "res":Landroid/content/res/Resources;
    invoke-static {v2, p1}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v4

    .line 170
    .local v4, "saveLocale":Ljava/util/Locale;
    invoke-static {v2}, Lcom/android/inputmethod/latin/Utils;->getMainDictionaryResourceId(Landroid/content/res/Resources;)I

    move-result v3

    .line 171
    .local v3, "resourceId":I
    invoke-static {v2, v3}, Lcom/android/inputmethod/latin/Utils;->openRawResourceFd(Landroid/content/res/Resources;I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 172
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    invoke-static {v0}, Lcom/android/inputmethod/latin/DictionaryFactory;->isFullDictionary(Landroid/content/res/AssetFileDescriptor;)Z

    move-result v1

    .line 174
    .local v1, "hasDictionary":Z
    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :cond_0
    :goto_0
    invoke-static {v2, v4}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    .line 180
    return v1

    .line 175
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method protected static isFullDictionary(Landroid/content/res/AssetFileDescriptor;)Z
    .locals 4
    .param p0, "afd"    # Landroid/content/res/AssetFileDescriptor;

    .prologue
    .line 232
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    const-wide/16 v2, 0x22

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
