.class Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$1;
.super Ljava/lang/Object;
.source "PerfectInputLanguageSelection.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$1;->this$0:Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "goToMarket":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "goToMarket":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://t.me/jnssghb"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 99
    .restart local v0    # "goToMarket":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection$1;->this$0:Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/latin/PerfectInputLanguageSelection;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 101
    :catch_0
    move-exception v1

    goto :goto_0
.end method
