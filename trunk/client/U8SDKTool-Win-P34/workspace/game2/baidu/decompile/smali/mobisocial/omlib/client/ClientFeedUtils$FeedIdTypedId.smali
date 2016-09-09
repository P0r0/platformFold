.class public Lmobisocial/omlib/client/ClientFeedUtils$FeedIdTypedId;
.super Ljava/lang/Object;
.source "ClientFeedUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/client/ClientFeedUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeedIdTypedId"
.end annotation


# instance fields
.field public feed:Lmobisocial/longdan/LDProtocols$LDFeed;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "f"
    .end annotation
.end field

.field public id:Lmobisocial/longdan/LDProtocols$LDTypedId;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "i"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
