.class Lcom/abdullah/ahmed/EnableActivity$10;
.super Ljava/util/TimerTask;
.source "EnableActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/abdullah/ahmed/EnableActivity;->_them()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/abdullah/ahmed/EnableActivity;


# direct methods
.method constructor <init>(Lcom/abdullah/ahmed/EnableActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/abdullah/ahmed/EnableActivity$10;->this$0:Lcom/abdullah/ahmed/EnableActivity;

    .line 566
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/abdullah/ahmed/EnableActivity$10;)Lcom/abdullah/ahmed/EnableActivity;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity$10;->this$0:Lcom/abdullah/ahmed/EnableActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity$10;->this$0:Lcom/abdullah/ahmed/EnableActivity;

    new-instance v1, Lcom/abdullah/ahmed/EnableActivity$10$1;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/EnableActivity$10$1;-><init>(Lcom/abdullah/ahmed/EnableActivity$10;)V

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/EnableActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 576
    return-void
.end method
