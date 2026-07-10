.class Lcom/android/inputmethod/latin/DomainEditor$3;
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
    iput-object p1, p0, Lcom/android/inputmethod/latin/DomainEditor$3;->this$0:Lcom/android/inputmethod/latin/DomainEditor;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 196
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 197
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    iget-object v1, p0, Lcom/android/inputmethod/latin/DomainEditor$3;->this$0:Lcom/android/inputmethod/latin/DomainEditor;

    .line 200
    const-string v2, "Select Picture"

    .line 199
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    .line 200
    const/4 v3, 0x0

    .line 199
    invoke-virtual {v1, v2, v3}, Lcom/android/inputmethod/latin/DomainEditor;->startActivityForResult(Landroid/content/Intent;I)V

    .line 205
    const/4 v1, 0x1

    return v1
.end method
