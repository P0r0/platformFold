.class Lmobisocial/omlib/client/LongdanMessageConsumer$1;
.super Ljava/lang/Object;
.source "LongdanMessageConsumer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/LongdanMessageConsumer;-><init>(Lmobisocial/omlib/client/LongdanClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanMessageConsumer;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlib/client/LongdanMessageConsumer;

    .prologue
    .line 119
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$1;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 124
    :try_start_0
    iget-object v1, p0, Lmobisocial/omlib/client/LongdanMessageConsumer$1;->this$0:Lmobisocial/omlib/client/LongdanMessageConsumer;

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanMessageConsumer;->feedPoller()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 128
    :goto_5
    return-void

    .line 125
    :catch_6
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LongdanMessageConsumer"

    const-string v2, "FeedPoller quit"

    invoke-static {v1, v2, v0}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method
