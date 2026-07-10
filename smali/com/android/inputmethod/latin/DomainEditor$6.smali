.class Lcom/android/inputmethod/latin/DomainEditor$6;
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
    iput-object p1, p0, Lcom/android/inputmethod/latin/DomainEditor$6;->this$0:Lcom/android/inputmethod/latin/DomainEditor;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor$6;->this$0:Lcom/android/inputmethod/latin/DomainEditor;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/DomainEditor;->RestoreDbFiles()V

    .line 250
    const/4 v0, 0x1

    return v0
.end method
