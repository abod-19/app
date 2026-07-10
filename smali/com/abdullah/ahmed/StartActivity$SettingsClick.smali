.class Lcom/abdullah/ahmed/StartActivity$SettingsClick;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;

.field final synthetic this$0:Lcom/abdullah/ahmed/StartActivity;

.method constructor <init>(Lcom/abdullah/ahmed/StartActivity;)V
    .locals 0
    iput-object p1, p0, Lcom/abdullah/ahmed/StartActivity$SettingsClick;->this$0:Lcom/abdullah/ahmed/StartActivity;
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    iget-object v0, p0, Lcom/abdullah/ahmed/StartActivity$SettingsClick;->this$0:Lcom/abdullah/ahmed/StartActivity;
    invoke-virtual {v0}, Lcom/abdullah/ahmed/StartActivity;->openAppSettings()V
    return-void
.end method
