.class Lcom/android/inputmethod/latin/DomainEditor$12;
.super Ljava/lang/Object;
.source "DomainEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/DomainEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/DomainEditor;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/DomainEditor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/DomainEditor$12;->this$0:Lcom/android/inputmethod/latin/DomainEditor;

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/latin/DomainEditor$12;)Lcom/android/inputmethod/latin/DomainEditor;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor$12;->this$0:Lcom/android/inputmethod/latin/DomainEditor;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 365
    new-instance v0, Lcom/android/common/colorPicker/AmbilWarnaDialog;

    iget-object v1, p0, Lcom/android/inputmethod/latin/DomainEditor$12;->this$0:Lcom/android/inputmethod/latin/DomainEditor;

    const/4 v2, -0x1

    new-instance v3, Lcom/android/inputmethod/latin/DomainEditor$12$1;

    invoke-direct {v3, p0}, Lcom/android/inputmethod/latin/DomainEditor$12$1;-><init>(Lcom/android/inputmethod/latin/DomainEditor$12;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/common/colorPicker/AmbilWarnaDialog;-><init>(Landroid/content/Context;ILcom/android/common/colorPicker/AmbilWarnaDialog$OnAmbilWarnaListener;)V

    .line 382
    .local v0, "dialogbackgroundColor":Lcom/android/common/colorPicker/AmbilWarnaDialog;
    invoke-virtual {v0}, Lcom/android/common/colorPicker/AmbilWarnaDialog;->show()V

    .line 383
    const/4 v1, 0x1

    return v1
.end method
