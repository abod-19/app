.class Lcom/android/inputmethod/latin/DomainEditor$8;
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
    iput-object p1, p0, Lcom/android/inputmethod/latin/DomainEditor$8;->this$0:Lcom/android/inputmethod/latin/DomainEditor;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/latin/DomainEditor$8;)Lcom/android/inputmethod/latin/DomainEditor;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor$8;->this$0:Lcom/android/inputmethod/latin/DomainEditor;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 264
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 265
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/common/colorPicker/AmbilWarnaDialog;

    iget-object v2, p0, Lcom/android/inputmethod/latin/DomainEditor$8;->this$0:Lcom/android/inputmethod/latin/DomainEditor;

    const v3, 0x7f0a0001

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    new-instance v4, Lcom/android/inputmethod/latin/DomainEditor$8$1;

    invoke-direct {v4, p0}, Lcom/android/inputmethod/latin/DomainEditor$8$1;-><init>(Lcom/android/inputmethod/latin/DomainEditor$8;)V

    invoke-direct {v0, v2, v3, v4}, Lcom/android/common/colorPicker/AmbilWarnaDialog;-><init>(Landroid/content/Context;ILcom/android/common/colorPicker/AmbilWarnaDialog$OnAmbilWarnaListener;)V

    .line 282
    .local v0, "dialog":Lcom/android/common/colorPicker/AmbilWarnaDialog;
    invoke-virtual {v0}, Lcom/android/common/colorPicker/AmbilWarnaDialog;->show()V

    .line 284
    const/4 v2, 0x1

    return v2
.end method
