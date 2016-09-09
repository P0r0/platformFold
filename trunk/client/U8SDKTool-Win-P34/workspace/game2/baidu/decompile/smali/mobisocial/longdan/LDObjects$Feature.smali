.class public Lmobisocial/longdan/LDObjects$Feature;
.super Lmobisocial/longdan/LDObjects$Enum;
.source "LDObjects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDObjects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Feature"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 230
    invoke-direct {p0}, Lmobisocial/longdan/LDObjects$Enum;-><init>()V

    return-void
.end method
