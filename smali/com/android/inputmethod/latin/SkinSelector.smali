.class public Lcom/android/inputmethod/latin/SkinSelector;
.super Landroid/app/ListActivity;
.source "SkinSelector.java"


# instance fields
.field goToMarket:Ljava/lang/String;

.field names:[Ljava/lang/String;

.field private skinsData:Lcom/android/inputmethod/latin/Wordinfo$SkinData;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 22
    const-string v0, "  \u2022\u2e22 \u062a\u062d\u0645\u064a\u0644 \u062b\u064a\u0645\u0627\u062a \u0627\u0643\u062b\u0631 \u2e25\u2022  "

    iput-object v0, p0, Lcom/android/inputmethod/latin/SkinSelector;->goToMarket:Ljava/lang/String;

    .line 23
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "  \u2022\u2e22 \u062b\u064a\u0645 \u0627\u064a\u0641\u0648\u0646 \u0627\u0632\u0631\u0642 \u0648\u0627\u0628\u064a\u0636 \u2e25\u2022  "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 24
    const-string v2, "  \u2022\u2e22 \u062b\u064a\u0645 \u0631\u0635\u0627\u0635\u064a \u2e25\u2022  "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 25
    const-string v2, "  \u2022\u2e22 \u062b\u064a\u0645 \u0627\u062e\u0636\u0631 \u0648\u0628\u0646\u0641\u0633\u062c\u064a \u2e25\u2022  "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 26
    const-string v2, "  \u2022\u2e22 \u062b\u064a\u0645 \u0632\u0647\u0631\u064a \u0648\u0627\u0628\u064a\u0636 \u2e25\u2022  "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 27
    const-string v2, "  \u2022\u2e22 \u062b\u064a\u0645 \u0628\u0646\u0641\u0633\u062c\u064a \u2e25\u2022  "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 28
    const-string v2, "  \u2022\u2e22 \u062b\u064a\u0645 \u0627\u0633\u0648\u062f \u2e25\u2022  "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 29
    const-string v2, "  \u2022\u2e22 \u062b\u064a\u0645 \u0627\u0632\u0631\u0642 \u2e25\u2022  "

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 30
    const-string v2, "  \u2022\u2e22 \u062b\u064a\u0645 \u0627\u062d\u0645\u0631 \u2e25\u2022  "

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 31
    const-string v2, "  \u2022\u2e22 \u062b\u064a\u0645 \u0627\u064a\u0641\u0648\u0646 \u0631\u0645\u0627\u062f\u064a \u2e25\u2022  "

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/inputmethod/latin/SkinSelector;->names:[Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-static {}, Lcom/android/inputmethod/latin/Wordinfo;->resetBuildersCache()V

    .line 39
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SkinSelector;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/inputmethod/latin/Wordinfo;->getAllBuilders(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 40
    invoke-static {}, Lcom/android/inputmethod/latin/Wordinfo;->getSkinsNames()Ljava/util/ArrayList;

    move-result-object v0

    .line 41
    .local v0, "Skins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/SkinSelector;->names:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 45
    iget-object v2, p0, Lcom/android/inputmethod/latin/SkinSelector;->goToMarket:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v2, Landroid/widget/ArrayAdapter;

    .line 49
    const v3, 0x1090003

    invoke-direct {v2, p0, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 48
    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/SkinSelector;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    return-void

    .line 43
    :cond_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/inputmethod/latin/SkinSelector;->names:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/inputmethod/latin/SkinSelector;->names:[Ljava/lang/String;

    array-length v4, v4

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 9
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 54
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 56
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SkinSelector;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-interface {v7, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    .line 57
    .local v5, "o":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, "keyword":Ljava/lang/String;
    const/4 v0, 0x0

    .line 59
    .local v0, "InternalSkinSelected":Z
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 60
    .local v6, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 61
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .local v3, "i":Ljava/lang/Integer;
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Lcom/android/inputmethod/latin/SkinSelector;->names:[Ljava/lang/String;

    array-length v8, v8

    if-lt v7, v8, :cond_0

    .line 71
    :goto_1
    if-nez v0, :cond_3

    .line 73
    iget-object v7, p0, Lcom/android/inputmethod/latin/SkinSelector;->goToMarket:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 75
    const/4 v2, 0x0

    .line 76
    .local v2, "goToMarket":Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "goToMarket":Landroid/content/Intent;
    const-string v7, "android.intent.action.VIEW"

    const-string v8, "https://t.me/jnssghb"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 77
    .restart local v2    # "goToMarket":Landroid/content/Intent;
    const/high16 v7, 0x10000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 78
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/SkinSelector;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v2    # "goToMarket":Landroid/content/Intent;
    :goto_2
    return-void

    .line 63
    :cond_0
    iget-object v7, p0, Lcom/android/inputmethod/latin/SkinSelector;->names:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 65
    const/4 v0, 0x1

    .line 66
    const-string v7, "pref_keyboard_layout_20100902"

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 67
    const-string v7, "external_skin"

    const-string v8, ""

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 83
    :cond_2
    const-string v7, "external_skin"

    invoke-interface {v1, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 86
    :cond_3
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u0627\u0646\u062a \u0627\u062e\u062a\u0631\u062a :"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 88
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 79
    .restart local v2    # "goToMarket":Landroid/content/Intent;
    :catch_0
    move-exception v7

    goto :goto_2
.end method
