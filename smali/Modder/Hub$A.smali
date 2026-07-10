.class public LModder/Hub$A;
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
    name = "A"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private final this$0:LModder/Hub;


# direct methods
.method constructor <init>(LModder/Hub;Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 110
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, LModder/Hub$A;->this$0:LModder/Hub;

    .line 111
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, LModder/Hub$A;->context:Landroid/content/Context;

    return-void
.end method

.method static access$0(LModder/Hub$A;)LModder/Hub;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, LModder/Hub$A;->this$0:LModder/Hub;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 114
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, LModder/Hub$A;->context:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "https://t.me/jnssghb"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 116
    move-object v4, v1

    invoke-interface {v4}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
