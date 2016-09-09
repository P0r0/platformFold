.class Lmobisocial/omlib/client/LongdanMessageProcessor$RealtimeMessageProcessors;
.super Ljava/lang/Object;
.source "LongdanMessageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/client/LongdanMessageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RealtimeMessageProcessors"
.end annotation


# static fields
.field static final sProcessors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmobisocial/omlib/client/interfaces/RealtimeMessageProcessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmobisocial/omlib/client/LongdanMessageProcessor$RealtimeMessageProcessors;->sProcessors:Ljava/util/HashMap;

    .line 137
    sget-object v0, Lmobisocial/omlib/client/LongdanMessageProcessor$RealtimeMessageProcessors;->sProcessors:Ljava/util/HashMap;

    const-string v1, "feedActivity"

    new-instance v2, Lmobisocial/omlib/processors/FeedActivityRealtimeProcessor;

    invoke-direct {v2}, Lmobisocial/omlib/processors/FeedActivityRealtimeProcessor;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProcessorForType(Ljava/lang/String;)Lmobisocial/omlib/client/interfaces/RealtimeMessageProcessor;
    .registers 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 141
    sget-object v0, Lmobisocial/omlib/client/LongdanMessageProcessor$RealtimeMessageProcessors;->sProcessors:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/client/interfaces/RealtimeMessageProcessor;

    return-object v0
.end method
