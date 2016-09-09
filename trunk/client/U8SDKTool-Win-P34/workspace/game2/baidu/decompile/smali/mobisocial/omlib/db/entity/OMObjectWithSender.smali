.class public Lmobisocial/omlib/db/entity/OMObjectWithSender;
.super Lmobisocial/omlib/db/entity/OMObject;
.source "OMObjectWithSender.java"

# interfaces
.implements Lmobisocial/omlib/model/OmletModel$ObjectsWithSender$ObjectWithSenderColumns;


# annotations
.annotation runtime Lmobisocial/omlib/db/util/Table;
    value = "objects_with_sender"
.end annotation


# instance fields
.field public senderAccount:Ljava/lang/String;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "senderAccount"
    .end annotation
.end field

.field public senderName:Ljava/lang/String;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "senderName"
    .end annotation
.end field

.field public senderOwned:Ljava/lang/Boolean;
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "senderOwned"
    .end annotation
.end field

.field public senderThumbnailHash:[B
    .annotation runtime Lmobisocial/omlib/db/util/Column;
        value = "senderThumbnailHash"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lmobisocial/omlib/db/entity/OMObject;-><init>()V

    return-void
.end method
