.class Lmobisocial/omlib/client/LongdanMessageProcessor$2;
.super Ljava/lang/Object;
.source "LongdanMessageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/LongdanMessageProcessor;->processDatabaseAction(Lmobisocial/omlib/db/DatabaseRunnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field postCommit:Lmobisocial/omlib/client/LongdanMessageProcessor$PostCommitRunner;

.field final synthetic this$0:Lmobisocial/omlib/client/LongdanMessageProcessor;

.field final synthetic val$action:Lmobisocial/omlib/db/DatabaseRunnable;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanMessageProcessor;Lmobisocial/omlib/db/DatabaseRunnable;)V
    .registers 6
    .param p1, "this$0"    # Lmobisocial/omlib/client/LongdanMessageProcessor;

    .prologue
    .line 232
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$2;->this$0:Lmobisocial/omlib/client/LongdanMessageProcessor;

    iput-object p2, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$2;->val$action:Lmobisocial/omlib/db/DatabaseRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    new-instance v0, Lmobisocial/omlib/client/LongdanMessageProcessor$PostCommitRunner;

    iget-object v1, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$2;->this$0:Lmobisocial/omlib/client/LongdanMessageProcessor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmobisocial/omlib/client/LongdanMessageProcessor$PostCommitRunner;-><init>(Lmobisocial/omlib/client/LongdanMessageProcessor;Lmobisocial/omlib/client/LongdanMessageProcessor$1;)V

    iput-object v0, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$2;->postCommit:Lmobisocial/omlib/client/LongdanMessageProcessor$PostCommitRunner;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 238
    iget-object v3, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$2;->this$0:Lmobisocial/omlib/client/LongdanMessageProcessor;

    # getter for: Lmobisocial/omlib/client/LongdanMessageProcessor;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v3}, Lmobisocial/omlib/client/LongdanMessageProcessor;->access$200(Lmobisocial/omlib/client/LongdanMessageProcessor;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v3

    invoke-virtual {v3}, Lmobisocial/omlib/client/LongdanClient;->getNotificationProvider()Lmobisocial/omlib/client/interfaces/NotificationProvider;

    move-result-object v2

    .line 239
    .local v2, "np":Lmobisocial/omlib/client/interfaces/NotificationProvider;
    invoke-interface {v2}, Lmobisocial/omlib/client/interfaces/NotificationProvider;->beginNotificationBatch()V

    .line 240
    iget-object v3, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$2;->this$0:Lmobisocial/omlib/client/LongdanMessageProcessor;

    # getter for: Lmobisocial/omlib/client/LongdanMessageProcessor;->mDbHelper:Lmobisocial/omlib/db/OMSQLiteHelper;
    invoke-static {v3}, Lmobisocial/omlib/client/LongdanMessageProcessor;->access$000(Lmobisocial/omlib/client/LongdanMessageProcessor;)Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v3

    invoke-virtual {v3}, Lmobisocial/omlib/db/OMSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 241
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 243
    :try_start_1a
    iget-object v3, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$2;->val$action:Lmobisocial/omlib/db/DatabaseRunnable;

    iget-object v4, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$2;->this$0:Lmobisocial/omlib/client/LongdanMessageProcessor;

    # getter for: Lmobisocial/omlib/client/LongdanMessageProcessor;->mDbHelper:Lmobisocial/omlib/db/OMSQLiteHelper;
    invoke-static {v4}, Lmobisocial/omlib/client/LongdanMessageProcessor;->access$000(Lmobisocial/omlib/client/LongdanMessageProcessor;)Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v4

    iget-object v5, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$2;->postCommit:Lmobisocial/omlib/client/LongdanMessageProcessor$PostCommitRunner;

    invoke-interface {v3, v4, v5}, Lmobisocial/omlib/db/DatabaseRunnable;->run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V

    .line 244
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2a} :catch_36
    .catchall {:try_start_1a .. :try_end_2a} :catchall_42

    .line 248
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 250
    :goto_2d
    invoke-interface {v2}, Lmobisocial/omlib/client/interfaces/NotificationProvider;->releaseNotifications()V

    .line 251
    iget-object v3, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$2;->postCommit:Lmobisocial/omlib/client/LongdanMessageProcessor$PostCommitRunner;

    invoke-virtual {v3}, Lmobisocial/omlib/client/LongdanMessageProcessor$PostCommitRunner;->commit()V

    .line 258
    return-void

    .line 245
    :catch_36
    move-exception v1

    .line 246
    .local v1, "e":Ljava/lang/Exception;
    :try_start_37
    const-string v3, "Omlib-processor"

    const-string v4, "Transaction execution failed "

    invoke-static {v3, v4, v1}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_42

    .line 248
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2d

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_42
    move-exception v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method
