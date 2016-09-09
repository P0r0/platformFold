.class public Lmobisocial/omlib/client/ClientMessagingUtils$ExtendedOMObject;
.super Lmobisocial/omlib/db/entity/OMObject;
.source "ClientMessagingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/client/ClientMessagingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtendedOMObject"
.end annotation


# instance fields
.field public notify:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "notify"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public silent:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "silent"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 692
    invoke-direct {p0}, Lmobisocial/omlib/db/entity/OMObject;-><init>()V

    return-void
.end method
