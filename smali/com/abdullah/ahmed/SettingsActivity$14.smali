.class Lcom/abdullah/ahmed/SettingsActivity$14;
.super Ljava/util/TimerTask;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/abdullah/ahmed/SettingsActivity;->_animation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/abdullah/ahmed/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/abdullah/ahmed/SettingsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/abdullah/ahmed/SettingsActivity$14;->this$0:Lcom/abdullah/ahmed/SettingsActivity;

    .line 675
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/abdullah/ahmed/SettingsActivity$14;)Lcom/abdullah/ahmed/SettingsActivity;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity$14;->this$0:Lcom/abdullah/ahmed/SettingsActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/abdullah/ahmed/SettingsActivity$14;->this$0:Lcom/abdullah/ahmed/SettingsActivity;

    new-instance v1, Lcom/abdullah/ahmed/SettingsActivity$14$1;

    invoke-direct {v1, p0}, Lcom/abdullah/ahmed/SettingsActivity$14$1;-><init>(Lcom/abdullah/ahmed/SettingsActivity$14;)V

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/SettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 890
    return-void
.end method
