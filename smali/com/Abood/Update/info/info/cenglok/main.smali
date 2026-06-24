.class public Lcom/Abood/Update/info/info/cenglok/main;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/Abood/Update/info/info/cenglok/main0002;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/Abood/Update/info/info/cenglok/main0002;

    invoke-direct {v0, p0}, Lcom/Abood/Update/info/info/cenglok/main0002;-><init>(Lcom/Abood/Update/info/info/cenglok/main;)V

    invoke-virtual {p0, v0}, Lcom/Abood/Update/info/info/cenglok/main;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
