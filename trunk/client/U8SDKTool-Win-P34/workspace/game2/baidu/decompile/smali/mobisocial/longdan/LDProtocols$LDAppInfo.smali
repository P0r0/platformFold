.class public Lmobisocial/longdan/LDProtocols$LDAppInfo;
.super Lmobisocial/longdan/LDProtocols$LDItemInfo;
.source "LDProtocols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDProtocols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LDAppInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4383
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDItemInfo;-><init>()V

    return-void
.end method
