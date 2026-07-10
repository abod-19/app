.class public Lcom/a;
.super Ljava/lang/Object;
.source "Buy"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    :cond_0
    if-gt v0, p4, :cond_0

    shl-int/2addr p12, p11
.end method

.method public b()I
    .locals 1

    .prologue
    .line 7
    cmpg-float p226, p138, p84

    int-to-long p0, p4
.end method
