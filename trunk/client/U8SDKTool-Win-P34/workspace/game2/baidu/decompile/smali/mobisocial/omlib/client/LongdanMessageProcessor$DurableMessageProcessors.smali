.class Lmobisocial/omlib/client/LongdanMessageProcessor$DurableMessageProcessors;
.super Ljava/lang/Object;
.source "LongdanMessageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/client/LongdanMessageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DurableMessageProcessors"
.end annotation


# static fields
.field static final sCustomObjectProcessor:Lmobisocial/omlib/client/interfaces/DurableMessageProcessor;

.field static final sProcessors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmobisocial/omlib/client/interfaces/DurableMessageProcessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 85
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmobisocial/omlib/client/LongdanMessageProcessor$DurableMessageProcessors;->sProcessors:Ljava/util/HashMap;

    .line 87
    new-instance v1, Lmobisocial/omlib/processors/ChatObjectProcessor;

    invoke-direct {v1}, Lmobisocial/omlib/processors/ChatObjectProcessor;-><init>()V

    sput-object v1, Lmobisocial/omlib/client/LongdanMessageProcessor$DurableMessageProcessors;->sCustomObjectProcessor:Lmobisocial/omlib/client/interfaces/DurableMessageProcessor;

    .line 90
    sget-object v0, Lmobisocial/omlib/client/LongdanMessageProcessor$DurableMessageProcessors;->sCustomObjectProcessor:Lmobisocial/omlib/client/interfaces/DurableMessageProcessor;

    .line 91
    .local v0, "dbp":Lmobisocial/omlib/client/interfaces/DurableMessageProcessor;
    sget-object v1, Lmobisocial/omlib/client/LongdanMessageProcessor$DurableMessageProcessors;->sProcessors:Ljava/util/HashMap;

    const-string v2, "picture"

    new-instance v3, Lmobisocial/omlib/processors/PictureProcessor;

    invoke-direct {v3}, Lmobisocial/omlib/processors/PictureProcessor;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v1, Lmobisocial/omlib/client/LongdanMessageProcessor$DurableMessageProcessors;->sProcessors:Ljava/util/HashMap;

    const-string v2, "text"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v1, Lmobisocial/omlib/client/LongdanMessageProcessor$DurableMessageProcessors;->sProcessors:Ljava/util/HashMap;

    const-string v2, "comment"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v1, Lmobisocial/omlib/client/LongdanMessageProcessor$DurableMessageProcessors;->sProcessors:Ljava/util/HashMap;

    const-string v2, "ilbc"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v1, Lmobisocial/omlib/client/LongdanMessageProcessor$DurableMessageProcessors;->sProcessors:Ljava/util/HashMap;

    const-string v2, "location"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v1, Lmobisocial/omlib/client/LongdanMessageProcessor$DurableMessageProcessors;->sProcessors:Ljava/util/HashMap;

    const-string v2, "animated_gif"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v1, Lmobisocial/omlib/client/LongdanMessageProcessor$DurableMessageProcessors;->sProcessors:Ljava/util/HashMap;

    const-string v2, "canvas"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v1, Lmobisocial/omlib/client/LongdanMessageProcessor$DurableMessageProcessors;->sProcessors:Ljava/util/HashMap;

    const-string v2, "app"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v1, Lmobisocial/omlib/client/LongdanMessageProcessor$DurableMessageProcessors;->sProcessors:Ljava/util/HashMap;

    const-string v2, "rdl"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v1, Lmobisocial/omlib/client/LongdanMessageProcessor$DurableMessageProcessors;->sProcessors:Ljava/util/HashMap;

    const-string v2, "sticker"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v1, Lmobisocial/omlib/client/LongdanMessageProcessor$DurableMessageProcessors;->sProcessors:Ljava/util/HashMap;

    const-string v2, "audio"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v1, Lmobisocial/omlib/client/LongdanMessageProcessor$DurableMessageProcessors;->sProcessors:Ljava/util/HashMap;

    const-string v2, "video"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v1, Lmobisocial/omlib/client/LongdanMessageProcessor$DurableMessageProcessors;->sProcessors:Ljava/util/HashMap;

    const-string v2, "file"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v1, Lmobisocial/omlib/client/LongdanMessageProcessor$DurableMessageProcessors;->sProcessors:Ljava/util/HashMap;

    const-string v2, "!contact"

    new-instance v3, Lmobisocial/omlib/processors/ContactProcessor;

    invoke-direct {v3}, Lmobisocial/omlib/processors/ContactProcessor;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v1, Lmobisocial/omlib/client/LongdanMessageProcessor$DurableMessageProcessors;->sProcessors:Ljava/util/HashMap;

    const-string v2, "lastRead"

    new-instance v3, Lmobisocial/omlib/processors/LastReadProcessor;

    invoke-direct {v3}, Lmobisocial/omlib/processors/LastReadProcessor;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v1, Lmobisocial/omlib/client/LongdanMessageProcessor$DurableMessageProcessors;->sProcessors:Ljava/util/HashMap;

    const-string v2, "ack"

    new-instance v3, Lmobisocial/omlib/processors/AckProcessor;

    invoke-direct {v3}, Lmobisocial/omlib/processors/AckProcessor;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v1, Lmobisocial/omlib/client/LongdanMessageProcessor$DurableMessageProcessors;->sProcessors:Ljava/util/HashMap;

    const-string v2, "like"

    new-instance v3, Lmobisocial/omlib/processors/LikeProcessor;

    invoke-direct {v3}, Lmobisocial/omlib/processors/LikeProcessor;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v1, Lmobisocial/omlib/client/LongdanMessageProcessor$DurableMessageProcessors;->sProcessors:Ljava/util/HashMap;

    const-string v2, "delete"

    new-instance v3, Lmobisocial/omlib/processors/DeleteProcessor;

    invoke-direct {v3}, Lmobisocial/omlib/processors/DeleteProcessor;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v1, Lmobisocial/omlib/client/LongdanMessageProcessor$DurableMessageProcessors;->sProcessors:Ljava/util/HashMap;

    const-string v2, "!feed_details"

    new-instance v3, Lmobisocial/omlib/processors/FeedDetailsProcessor;

    invoke-direct {v3}, Lmobisocial/omlib/processors/FeedDetailsProcessor;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v1, Lmobisocial/omlib/client/LongdanMessageProcessor$DurableMessageProcessors;->sProcessors:Ljava/util/HashMap;

    const-string v2, "!profile"

    new-instance v3, Lmobisocial/omlib/processors/PersonalProfileProcessor;

    invoke-direct {v3}, Lmobisocial/omlib/processors/PersonalProfileProcessor;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v1, Lmobisocial/omlib/client/LongdanMessageProcessor$DurableMessageProcessors;->sProcessors:Ljava/util/HashMap;

    const-string v2, "!profilePublicState"

    new-instance v3, Lmobisocial/omlib/processors/PublicProfileStateProcessor;

    invoke-direct {v3}, Lmobisocial/omlib/processors/PublicProfileStateProcessor;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v1, Lmobisocial/omlib/client/LongdanMessageProcessor$DurableMessageProcessors;->sProcessors:Ljava/util/HashMap;

    const-string v2, "!itemId"

    new-instance v3, Lmobisocial/omlib/processors/StoreItemProcessor;

    invoke-direct {v3}, Lmobisocial/omlib/processors/StoreItemProcessor;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v1, Lmobisocial/omlib/client/LongdanMessageProcessor$DurableMessageProcessors;->sProcessors:Ljava/util/HashMap;

    const-string v2, "!oobsms"

    new-instance v3, Lmobisocial/omlib/processors/SmsParticipationProcessor;

    invoke-direct {v3}, Lmobisocial/omlib/processors/SmsParticipationProcessor;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v1, Lmobisocial/omlib/client/LongdanMessageProcessor$DurableMessageProcessors;->sProcessors:Ljava/util/HashMap;

    const-string v2, "ref"

    new-instance v3, Lmobisocial/omlib/processors/BlobRefProcessor;

    invoke-direct {v3}, Lmobisocial/omlib/processors/BlobRefProcessor;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v1, Lmobisocial/omlib/client/LongdanMessageProcessor$DurableMessageProcessors;->sProcessors:Ljava/util/HashMap;

    const-string v2, "eref"

    new-instance v3, Lmobisocial/omlib/processors/BlobRefProcessor;

    invoke-direct {v3}, Lmobisocial/omlib/processors/BlobRefProcessor;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v1, Lmobisocial/omlib/client/LongdanMessageProcessor$DurableMessageProcessors;->sProcessors:Ljava/util/HashMap;

    const-string v2, "!member"

    new-instance v3, Lmobisocial/omlib/processors/MembershipProcessor;

    invoke-direct {v3}, Lmobisocial/omlib/processors/MembershipProcessor;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v1, Lmobisocial/omlib/client/LongdanMessageProcessor$DurableMessageProcessors;->sProcessors:Ljava/util/HashMap;

    const-string v2, "-acceptance"

    new-instance v3, Lmobisocial/omlib/processors/AcceptanceChangeProcessor;

    invoke-direct {v3}, Lmobisocial/omlib/processors/AcceptanceChangeProcessor;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProcessorForType(Ljava/lang/String;)Lmobisocial/omlib/client/interfaces/DurableMessageProcessor;
    .registers 3
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 121
    sget-object v1, Lmobisocial/omlib/client/LongdanMessageProcessor$DurableMessageProcessors;->sProcessors:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/client/interfaces/DurableMessageProcessor;

    .line 122
    .local v0, "proc":Lmobisocial/omlib/client/interfaces/DurableMessageProcessor;
    if-eqz v0, :cond_b

    .line 128
    .end local v0    # "proc":Lmobisocial/omlib/client/interfaces/DurableMessageProcessor;
    :goto_a
    return-object v0

    .line 125
    .restart local v0    # "proc":Lmobisocial/omlib/client/interfaces/DurableMessageProcessor;
    :cond_b
    const-string v1, "+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 126
    sget-object v0, Lmobisocial/omlib/client/LongdanMessageProcessor$DurableMessageProcessors;->sCustomObjectProcessor:Lmobisocial/omlib/client/interfaces/DurableMessageProcessor;

    goto :goto_a

    .line 128
    :cond_16
    const/4 v0, 0x0

    goto :goto_a
.end method
