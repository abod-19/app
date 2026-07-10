.class Lcom/android/inputmethod/latin/DomainEditor$2;
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
    iput-object p1, p0, Lcom/android/inputmethod/latin/DomainEditor$2;->this$0:Lcom/android/inputmethod/latin/DomainEditor;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x1

    .line 176
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .local v1, "emailIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 179
    .local v2, "res":Landroid/content/res/Resources;
    new-array v0, v6, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "perfectkeyboards@gmail.com"

    aput-object v4, v0, v3

    .line 181
    .local v0, "aEmailList":[Ljava/lang/String;
    const-string v3, "android.intent.extra.EMAIL"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string v3, "android.intent.extra.SUBJECT"

    const-string v4, "Perfect keyboard"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v3, "plain/text"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v3, "android.intent.extra.TEXT"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u0627\u0644\u062c\u0647\u0627\u0632 : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\u0627\u0635\u062f\u0627\u0631 \u0627\u0644\u062c\u0647\u0627\u0632: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\u0627\u0635\u062f\u0627\u0631 \u0627\u0644\u06aa\u064a\u0628\u0648\u0631\u062f : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0d00f5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    :try_start_0
    iget-object v3, p0, Lcom/android/inputmethod/latin/DomainEditor$2;->this$0:Lcom/android/inputmethod/latin/DomainEditor;

    invoke-virtual {v3, v1}, Lcom/android/inputmethod/latin/DomainEditor;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return v6

    .line 187
    :catch_0
    move-exception v3

    goto :goto_0
.end method
