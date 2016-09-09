.class Lmobisocial/omlib/client/LongdanDurableJobProcessor$DurableJobHandlers;
.super Ljava/lang/Object;
.source "LongdanDurableJobProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/client/LongdanDurableJobProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DurableJobHandlers"
.end annotation


# static fields
.field static final sProcessors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lmobisocial/omlib/client/interfaces/DurableJobHandler;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$DurableJobHandlers;->sProcessors:Ljava/util/HashMap;

    .line 81
    sget-object v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$DurableJobHandlers;->sProcessors:Ljava/util/HashMap;

    const-string v1, "awaitable"

    const-class v2, Lmobisocial/omlib/jobs/AwaitableDurableJobHandler;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$DurableJobHandlers;->sProcessors:Ljava/util/HashMap;

    const-string v1, "upload"

    const-class v2, Lmobisocial/omlib/jobs/BlobUploadJobHandler;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$DurableJobHandlers;->sProcessors:Ljava/util/HashMap;

    const-string v1, "CONTACT_PROFILE"

    const-class v2, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$DurableJobHandlers;->sProcessors:Ljava/util/HashMap;

    const-string v1, "CONTROL"

    const-class v2, Lmobisocial/omlib/jobs/ControlMessageJobHandler;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$DurableJobHandlers;->sProcessors:Ljava/util/HashMap;

    const-string v1, "direct-upload"

    const-class v2, Lmobisocial/omlib/jobs/DirectBlobUploadJobHandler;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$DurableJobHandlers;->sProcessors:Ljava/util/HashMap;

    const-string v1, "msg-direct-overwrite"

    const-class v2, Lmobisocial/omlib/jobs/DirectMessageOverwriteJobHandler;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$DurableJobHandlers;->sProcessors:Ljava/util/HashMap;

    const-string v1, "msg-overwrite"

    const-class v2, Lmobisocial/omlib/jobs/MessageOverwriteJobHandler;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$DurableJobHandlers;->sProcessors:Ljava/util/HashMap;

    const-string v1, "like-overwrite"

    const-class v2, Lmobisocial/omlib/jobs/LikeMessageOverwriteJobHandler;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$DurableJobHandlers;->sProcessors:Ljava/util/HashMap;

    const-string v1, "USER_PROFILE_BLOB"

    const-class v2, Lmobisocial/omlib/jobs/UploadUserProfilePictureJob;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$DurableJobHandlers;->sProcessors:Ljava/util/HashMap;

    const-string v1, "gcm-registration"

    const-class v2, Lmobisocial/omlib/jobs/GcmRegistrationJobHandler;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$DurableJobHandlers;->sProcessors:Ljava/util/HashMap;

    const-string v1, "push-registration"

    const-class v2, Lmobisocial/omlib/jobs/PushRegistrationJobHandler;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$DurableJobHandlers;->sProcessors:Ljava/util/HashMap;

    const-string v1, "USER_PROFILE_DETAILS"

    const-class v2, Lmobisocial/omlib/jobs/RefreshPersonalProfileJobHandler;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$DurableJobHandlers;->sProcessors:Ljava/util/HashMap;

    const-string v1, "USER_PROFILE_NAME"

    const-class v2, Lmobisocial/omlib/jobs/SetUserProfileNameJobHandler;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$DurableJobHandlers;->sProcessors:Ljava/util/HashMap;

    const-string v1, "FEED_PROFILE_PIC"

    const-class v2, Lmobisocial/omlib/jobs/UploadFeedProfilePictureJob;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$DurableJobHandlers;->sProcessors:Ljava/util/HashMap;

    const-string v1, "STORE_ITEM"

    const-class v2, Lmobisocial/omlib/jobs/StoreItemRefreshJobHandler;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHandlerForType(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lmobisocial/omlib/client/interfaces/DurableJobHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    sget-object v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$DurableJobHandlers;->sProcessors:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method
