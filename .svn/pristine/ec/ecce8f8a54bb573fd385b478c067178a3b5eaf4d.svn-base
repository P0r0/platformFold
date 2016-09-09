.class Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;
.super Ljava/lang/Object;
.source "LongdanDurableJobProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/client/LongdanDurableJobProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PendingJob"
.end annotation


# static fields
.field static final MAX_BACKOFF_SEC:I = 0x12c

.field static final MIN_BACKOFF_SEC:I = 0x2


# instance fields
.field backoff:I

.field final handler:Lmobisocial/omlib/client/interfaces/DurableJobHandler;

.field final recordId:J

.field state:Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobState;

.field final synthetic this$0:Lmobisocial/omlib/client/LongdanDurableJobProcessor;


# direct methods
.method public constructor <init>(Lmobisocial/omlib/client/LongdanDurableJobProcessor;Lmobisocial/omlib/client/interfaces/DurableJobHandler;J)V
    .registers 6
    .param p1, "this$0"    # Lmobisocial/omlib/client/LongdanDurableJobProcessor;
    .param p2, "handler"    # Lmobisocial/omlib/client/interfaces/DurableJobHandler;
    .param p3, "recordId"    # J

    .prologue
    .line 217
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;->this$0:Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p2, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;->handler:Lmobisocial/omlib/client/interfaces/DurableJobHandler;

    .line 219
    iput-wide p3, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;->recordId:J

    .line 220
    sget-object v0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobState;->Pending:Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobState;

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;->state:Lmobisocial/omlib/client/LongdanDurableJobProcessor$JobState;

    .line 221
    const/4 v0, 0x2

    iput v0, p0, Lmobisocial/omlib/client/LongdanDurableJobProcessor$PendingJob;->backoff:I

    .line 222
    return-void
.end method
