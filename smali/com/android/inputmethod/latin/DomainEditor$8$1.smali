.class Lcom/android/inputmethod/latin/DomainEditor$8$1;
.super Ljava/lang/Object;
.source "DomainEditor.java"

# interfaces
.implements Lcom/android/common/colorPicker/AmbilWarnaDialog$OnAmbilWarnaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/DomainEditor$8;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/inputmethod/latin/DomainEditor$8;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/DomainEditor$8;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/DomainEditor$8$1;->this$1:Lcom/android/inputmethod/latin/DomainEditor$8;

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/android/common/colorPicker/AmbilWarnaDialog;)V
    .locals 0
    .param p1, "dialog"    # Lcom/android/common/colorPicker/AmbilWarnaDialog;

    .prologue
    .line 279
    return-void
.end method

.method public onOk(Lcom/android/common/colorPicker/AmbilWarnaDialog;I)V
    .locals 2
    .param p1, "dialog"    # Lcom/android/common/colorPicker/AmbilWarnaDialog;
    .param p2, "color"    # I

    .prologue
    .line 268
    invoke-static {p2}, Lcom/android/inputmethod/latin/CandidateView;->setColor(I)V

    .line 270
    iget-object v1, p0, Lcom/android/inputmethod/latin/DomainEditor$8$1;->this$1:Lcom/android/inputmethod/latin/DomainEditor$8;

    invoke-static {v1}, Lcom/android/inputmethod/latin/DomainEditor$8;->access$0(Lcom/android/inputmethod/latin/DomainEditor$8;)Lcom/android/inputmethod/latin/DomainEditor;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 271
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "suggestion_font_color"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 272
    invoke-static {v0}, Lcom/android/inputmethod/latin/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 274
    return-void
.end method
