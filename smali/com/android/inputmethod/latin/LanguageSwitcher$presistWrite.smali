.class Lcom/android/inputmethod/latin/LanguageSwitcher$presistWrite;
.super Landroid/os/AsyncTask;
.source "LanguageSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LanguageSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "presistWrite"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/LanguageSwitcher;


# direct methods
.method private constructor <init>(Lcom/android/inputmethod/latin/LanguageSwitcher;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/inputmethod/latin/LanguageSwitcher$presistWrite;->this$0:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/inputmethod/latin/LanguageSwitcher;Lcom/android/inputmethod/latin/LanguageSwitcher$presistWrite;)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LanguageSwitcher$presistWrite;-><init>(Lcom/android/inputmethod/latin/LanguageSwitcher;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/LanguageSwitcher$presistWrite;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    .line 208
    iget-object v2, p0, Lcom/android/inputmethod/latin/LanguageSwitcher$presistWrite;->this$0:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-static {v2}, Lcom/android/inputmethod/latin/LanguageSwitcher;->access$0(Lcom/android/inputmethod/latin/LanguageSwitcher;)Lcom/android/inputmethod/latin/DictionaryEditor;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 209
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 210
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "input_language"

    iget-object v3, p0, Lcom/android/inputmethod/latin/LanguageSwitcher$presistWrite;->this$0:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getInputLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 211
    invoke-static {v0}, Lcom/android/inputmethod/latin/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 212
    const/4 v2, 0x0

    return-object v2
.end method
