.class Lmobisocial/omlib/client/LongdanMessageProcessor$1;
.super Ljava/lang/Object;
.source "LongdanMessageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/LongdanMessageProcessor;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/LongdanMessageProcessor;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanMessageProcessor;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlib/client/LongdanMessageProcessor;

    .prologue
    .line 146
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$1;->this$0:Lmobisocial/omlib/client/LongdanMessageProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 150
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$1;->this$0:Lmobisocial/omlib/client/LongdanMessageProcessor;

    # getter for: Lmobisocial/omlib/client/LongdanMessageProcessor;->mDbHelper:Lmobisocial/omlib/db/OMSQLiteHelper;
    invoke-static {v0}, Lmobisocial/omlib/client/LongdanMessageProcessor;->access$000(Lmobisocial/omlib/client/LongdanMessageProcessor;)Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v0

    const-string v1, "Omlib-processor"

    invoke-virtual {v0, v1}, Lmobisocial/omlib/db/OMSQLiteHelper;->setRequiredDbWriteThread(Ljava/lang/String;)V

    .line 151
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Omlib-processor"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 152
    return-void
.end method
