.class Lcom/android/inputmethod/latin/DomainEditor$13;
.super Ljava/lang/Object;
.source "DomainEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/DomainEditor;->onCreateDialog(I)Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/android/inputmethod/latin/DomainEditor$13;->this$0:Lcom/android/inputmethod/latin/DomainEditor;

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 594
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor$13;->this$0:Lcom/android/inputmethod/latin/DomainEditor;

    invoke-static {v0}, Lcom/android/inputmethod/latin/DomainEditor;->access$0(Lcom/android/inputmethod/latin/DomainEditor;)Landroid/preference/ListPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/DomainEditor$13;->this$0:Lcom/android/inputmethod/latin/DomainEditor;

    invoke-static {v1}, Lcom/android/inputmethod/latin/DomainEditor;->access$1(Lcom/android/inputmethod/latin/DomainEditor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor$13;->this$0:Lcom/android/inputmethod/latin/DomainEditor;

    invoke-static {v0}, Lcom/android/inputmethod/latin/DomainEditor;->access$2(Lcom/android/inputmethod/latin/DomainEditor;)Lcom/android/inputmethod/voice/VoiceInputLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->settingsWarningDialogCancel()V

    .line 601
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor$13;->this$0:Lcom/android/inputmethod/latin/DomainEditor;

    invoke-static {v0}, Lcom/android/inputmethod/latin/DomainEditor;->access$4(Lcom/android/inputmethod/latin/DomainEditor;)V

    .line 602
    return-void

    .line 597
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor$13;->this$0:Lcom/android/inputmethod/latin/DomainEditor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/DomainEditor;->access$3(Lcom/android/inputmethod/latin/DomainEditor;Z)V

    .line 599
    iget-object v0, p0, Lcom/android/inputmethod/latin/DomainEditor$13;->this$0:Lcom/android/inputmethod/latin/DomainEditor;

    invoke-static {v0}, Lcom/android/inputmethod/latin/DomainEditor;->access$2(Lcom/android/inputmethod/latin/DomainEditor;)Lcom/android/inputmethod/voice/VoiceInputLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->settingsWarningDialogOk()V

    goto :goto_0
.end method
