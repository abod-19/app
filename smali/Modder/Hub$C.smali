.class public LModder/Hub$C;
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
    name = "C"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private final this$0:LModder/Hub;


# direct methods
.method constructor <init>(LModder/Hub;Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, LModder/Hub$C;->this$0:LModder/Hub;

    .line 124
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, LModder/Hub$C;->context:Landroid/content/Context;

    return-void
.end method

.method static access$0(LModder/Hub$C;)LModder/Hub;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, LModder/Hub$C;->this$0:LModder/Hub;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, LModder/Hub$C;->context:Landroid/content/Context;

    const-string v5, "Welcome"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 130
    invoke-static {}, LModder/Hub;->access$L1000000()Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 131
    move-object v4, v0

    iget-object v4, v4, LModder/Hub$C;->context:Landroid/content/Context;

    invoke-static {v4}, LModder/Hub;->ରାଧାରାଣୀ୧(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, LModder/Hub$C;->this$0:LModder/Hub;

    iget-object v5, v5, LModder/Hub;->MT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LModder/Hub;->ରାଧାmake(Ljava/lang/String;)V

    .line 135
    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    iget-object v4, v4, LModder/Hub$C;->context:Landroid/content/Context;

    invoke-static {v4}, LModder/Hub;->ରାଧାରାଣୀ୧(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, LModder/Hub$C;->this$0:LModder/Hub;

    iget-object v5, v5, LModder/Hub;->MT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LModder/Hub;->ରାଧାରାଣୀ(Ljava/lang/String;)V

    goto :goto_0
.end method
