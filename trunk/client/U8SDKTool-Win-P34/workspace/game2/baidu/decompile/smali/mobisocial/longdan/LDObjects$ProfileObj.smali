.class public Lmobisocial/longdan/LDObjects$ProfileObj;
.super Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
.source "LDObjects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/LDObjects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileObj"
.end annotation


# instance fields
.field public ProfileDetails:Lmobisocial/longdan/LDProtocols$LDProfileDetails;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "p"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 77
    invoke-direct {p0}, Lmobisocial/longdan/LDProtocols$LDJSONLoggable;-><init>()V

    return-void
.end method
