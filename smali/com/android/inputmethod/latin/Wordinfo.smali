.class public Lcom/android/inputmethod/latin/Wordinfo;
.super Ljava/lang/Object;
.source "Wordinfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/Wordinfo$SkinData;,
        Lcom/android/inputmethod/latin/Wordinfo$SkinInfo;
    }
.end annotation


# static fields
.field public static final RECEIVER_INTERFACE:Ljava/lang/String; = "com.betterandroid.betterkeyboard.skins"

.field private static final TAG:Ljava/lang/String; = "SkinLoader"

.field private static m:Ljava/lang/String;

.field private static skin_creators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/Wordinfo$SkinInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getAllBuilders(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/Wordinfo$SkinInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    const-class v2, Lcom/android/inputmethod/latin/Wordinfo;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/inputmethod/latin/Wordinfo;->skin_creators:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    const-string v3, "com.betterandroid.betterkeyboard.skins"

    sput-object v3, Lcom/android/inputmethod/latin/Wordinfo;->m:Ljava/lang/String;

    .line 230
    .local v0, "skins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/inputmethod/latin/Wordinfo$SkinInfo;>;"
    invoke-static {p0}, Lcom/android/inputmethod/latin/Wordinfo;->getAllSkins(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 231
    const-string v3, "com.sarab.keyboard.skins"

    sput-object v3, Lcom/android/inputmethod/latin/Wordinfo;->m:Ljava/lang/String;

    .line 232
    .local v0, "skins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/inputmethod/latin/Wordinfo$SkinInfo;>;"
    invoke-static {p0}, Lcom/android/inputmethod/latin/Wordinfo;->getAllSkins(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 233
    sput-object v0, Lcom/android/inputmethod/latin/Wordinfo;->skin_creators:Ljava/util/ArrayList;

    .line 236
    .end local v0    # "skins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/inputmethod/latin/Wordinfo$SkinInfo;>;"
    :cond_0
    sget-object v1, Lcom/android/inputmethod/latin/Wordinfo;->skin_creators:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 226
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static getAllSkins(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/Wordinfo$SkinInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    sget-object v13, Lcom/android/inputmethod/latin/Wordinfo;->m:Ljava/lang/String;

    invoke-direct {v9, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 136
    .local v0, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v8, Lcom/android/inputmethod/latin/DictionaryEditor;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 137
    const-string v8, "SkinLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Number of potential external themes packages found: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 137
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v3, "externalSkins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/inputmethod/latin/Wordinfo$SkinInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 182
    sget-boolean v8, Lcom/android/inputmethod/latin/DictionaryEditor;->DEBUG:Z

    if-eqz v8, :cond_2

    .line 183
    const-string v8, "SkinLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Number of external dictionary builders successfully parsed: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 183
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_2
    return-object v3

    .line 144
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 146
    .local v5, "receiver":Landroid/content/pm/ResolveInfo;
    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v9, :cond_4

    .line 147
    const-string v9, "SkinLoader"

    .line 148
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "BroadcastReceiver has null ActivityInfo. Receiver\'s label is "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 148
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 147
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 157
    :cond_4
    :try_start_0
    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    .line 156
    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 158
    .local v2, "externalPackageContext":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "newformat2"

    const-string v11, "bool"

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 159
    .local v6, "resid":I
    if-eqz v6, :cond_5

    .line 161
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 162
    .local v4, "newFormat":Z
    if-nez v4, :cond_1

    .line 167
    .end local v4    # "newFormat":Z
    :cond_5
    new-instance v7, Lcom/android/inputmethod/latin/Wordinfo$SkinInfo;

    invoke-direct {v7}, Lcom/android/inputmethod/latin/Wordinfo$SkinInfo;-><init>()V

    .line 168
    .local v7, "skininfo":Lcom/android/inputmethod/latin/Wordinfo$SkinInfo;
    invoke-static {v7, v2}, Lcom/android/inputmethod/latin/Wordinfo$SkinInfo;->access$0(Lcom/android/inputmethod/latin/Wordinfo$SkinInfo;Landroid/content/Context;)V

    .line 169
    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v9, v9, Landroid/content/pm/ActivityInfo;->labelRes:I

    if-eqz v9, :cond_6

    .line 171
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v10, v10, Landroid/content/pm/ActivityInfo;->labelRes:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/inputmethod/latin/Wordinfo$SkinInfo;->access$1(Lcom/android/inputmethod/latin/Wordinfo$SkinInfo;Ljava/lang/String;)V

    .line 173
    :cond_6
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 177
    .end local v2    # "externalPackageContext":Landroid/content/Context;
    .end local v6    # "resid":I
    .end local v7    # "skininfo":Lcom/android/inputmethod/latin/Wordinfo$SkinInfo;
    :catch_0
    move-exception v1

    .line 178
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "SkinLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Did not find package: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static declared-synchronized getSkinByActivityInfo(Landroid/content/Context;)Lcom/android/inputmethod/latin/Wordinfo$SkinData;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v7, "btn_keyboard_key"

    const-string v8, "btn_keyboard_key_alt"

    const-string v9, "keyboard_background"

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "app_name"

    const-string v4, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 70
    .local v1, "w":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "r":Ljava/lang/String;
    const-string v2, "Abdullah"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v7, "btn_1"

    const-string v8, "btn_2"

    const-string v9, "kb"

    .line 72
    .line 73
    :cond_0
    const-class v3, Lcom/android/inputmethod/latin/Wordinfo;

    monitor-enter v3

    :try_start_0
    new-instance v1, Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    invoke-direct {v1}, Lcom/android/inputmethod/latin/Wordinfo$SkinData;-><init>()V

    .line 74
    .local v1, "skin":Lcom/android/inputmethod/latin/Wordinfo$SkinData;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v5, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 75
    .local v0, "resid":I
    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->btn_keyboard_key:Landroid/graphics/drawable/Drawable;

    .line 80
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v5, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v8, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 81
    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->btn_keyboard_key_alt:Landroid/graphics/drawable/Drawable;

    .line 86
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "keyboard_key_feedback"

    const-string v5, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 87
    if-eqz v0, :cond_3

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->keyboard_key_feedback:Landroid/graphics/drawable/Drawable;

    .line 91
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v5, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v9, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 92
    if-eqz v0, :cond_4

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->keyboard_background:Landroid/graphics/drawable/Drawable;

    .line 96
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "keyboard_suggest_strip"

    const-string v5, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 97
    if-eqz v0, :cond_5

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->candidate_background:Landroid/graphics/drawable/Drawable;

    .line 101
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "text_color"

    const-string v5, "color"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 102
    if-eqz v0, :cond_6

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->text_color:I

    .line 106
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "shadow_color"

    const-string v5, "color"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 107
    if-eqz v0, :cond_7

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->shadow_color:I

    .line 111
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "text_color2"

    const-string v5, "color"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 112
    if-eqz v0, :cond_8

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->text_color2:I

    .line 116
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "shadow_color2"

    const-string v5, "color"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 117
    if-eqz v0, :cond_9

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->shadow_color2:I

    .line 121
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "suggestion_color"

    const-string v5, "color"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 122
    if-eqz v0, :cond_a

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Lcom/android/inputmethod/latin/Wordinfo$SkinData;->suggestion_color:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :cond_a
    monitor-exit v3

    return-object v1

    .line 73
    .end local v0    # "resid":I
    .end local v1    # "skin":Lcom/android/inputmethod/latin/Wordinfo$SkinData;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getSkinDataByName(Ljava/lang/String;)Lcom/android/inputmethod/latin/Wordinfo$SkinData;
    .locals 4
    .param p0, "skinName"    # Ljava/lang/String;

    .prologue
    .line 193
    sget-object v3, Lcom/android/inputmethod/latin/Wordinfo;->skin_creators:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 195
    sget-object v3, Lcom/android/inputmethod/latin/Wordinfo;->skin_creators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 197
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 206
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 199
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    :cond_1
    sget-object v3, Lcom/android/inputmethod/latin/Wordinfo;->skin_creators:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/latin/Wordinfo$SkinInfo;

    .line 200
    .local v2, "skininfo":Lcom/android/inputmethod/latin/Wordinfo$SkinInfo;
    invoke-virtual {v2}, Lcom/android/inputmethod/latin/Wordinfo$SkinInfo;->getSkinName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 202
    invoke-virtual {v2}, Lcom/android/inputmethod/latin/Wordinfo$SkinInfo;->getPackageContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/inputmethod/latin/Wordinfo;->getSkinByActivityInfo(Landroid/content/Context;)Lcom/android/inputmethod/latin/Wordinfo$SkinData;

    move-result-object v3

    goto :goto_1

    .line 197
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getSkinsNames()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v2, "skins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/inputmethod/latin/Wordinfo;->skin_creators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 212
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 217
    return-object v2

    .line 214
    :cond_0
    sget-object v3, Lcom/android/inputmethod/latin/Wordinfo;->skin_creators:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/inputmethod/latin/Wordinfo$SkinInfo;

    invoke-static {v3}, Lcom/android/inputmethod/latin/Wordinfo$SkinInfo;->access$2(Lcom/android/inputmethod/latin/Wordinfo$SkinInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized resetBuildersCache()V
    .locals 2

    .prologue
    .line 221
    const-class v0, Lcom/android/inputmethod/latin/Wordinfo;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/inputmethod/latin/Wordinfo;->skin_creators:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    monitor-exit v0

    return-void

    .line 221
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
