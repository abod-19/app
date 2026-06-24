.class public LModder/Hub$B;
.super Ljava/lang/Object;
.source "Hub.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LModder/Hub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x21
    name = "B"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private final this$0:LModder/Hub;


# direct methods
.method constructor <init>(LModder/Hub;Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, LModder/Hub$B;->this$0:LModder/Hub;

    .line 94
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, LModder/Hub$B;->context:Landroid/content/Context;

    return-void
.end method

.method static access$0(LModder/Hub$B;)LModder/Hub;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, LModder/Hub$B;->this$0:LModder/Hub;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    new-instance v7, Landroid/content/Intent;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    move-object v4, v7

    .line 98
    move-object v7, v4

    const-string v8, "android.intent.action.SEND"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 99
    move-object v7, v4

    const-string v8, "android.intent.extra.TEXT"

    const-string v9, "\u0627\u065a\u0647\u0640\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\u0640\u0644\u0656\u0627  \u0628\u0640\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\u0640\u06aa\u0670\u0656  \u064a\u0627\u065a\u0641\u0656\u062e\u0640\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\u0640\u0645  \u0641\u0640\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\u0640\u064a  \u06aa\u0670\u0656\u064a\u0628\u0640\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\u0640\u0648\u0631\u062f \u060f\u0640\u0650\u0640\u0650\u0640\u0650\u0640\u0650\u0640\u0650\u0628\u0648\u062f \n \u0627\u0641\u0656\u062e\u0640\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\u0640\u0645  \u06aa\u0670\u0656\u064a\u0628\u0640\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\u0640\u0648\u065b\u0631\u062f  \u0641\u0640\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\u0640\u064a  \u0627\u065a\u0644\u0645\u062c\u0640\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\u0640\u0627\u0644 \n \u062a\u0627\u0628\u0640\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\u0640\u060f  \u0642\u0640\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\u0640\u0646\u0650\u0627\u062a\u064a  \u0644\u062a\u062d\u0645\u0640\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\u0640\u064a\u0644\u0656  \u0627\u062e\u0640\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\u0640\u0631  \u0627\u0635\u0640\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\ufe7b\u0640\u062f\u0627\u0631 \n https://t.me/jnssghb"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 100
    move-object v7, v4

    const-string v8, "text/plain"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 101
    move-object v7, v4

    const/4 v8, 0x0

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v7, v8}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v7

    move-object v5, v7

    .line 102
    move-object v7, v0

    iget-object v7, v7, LModder/Hub$B;->context:Landroid/content/Context;

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 103
    move-object v7, v0

    iget-object v7, v7, LModder/Hub$B;->context:Landroid/content/Context;

    invoke-static {v7}, LModder/Hub;->Mod(Landroid/content/Context;)V

    return-void
.end method
