.class Lmobisocial/omlib/client/LongdanMessageProcessor$3;
.super Ljava/lang/Object;
.source "LongdanMessageProcessor.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/LongdanMessageProcessor;->processDatabaseActionAsync(Lmobisocial/omlib/db/DatabaseCallable;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/LongdanMessageProcessor;

.field final synthetic val$action:Lmobisocial/omlib/db/DatabaseCallable;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanMessageProcessor;Lmobisocial/omlib/db/DatabaseCallable;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlib/client/LongdanMessageProcessor;

    .prologue
    .line 267
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$3;->this$0:Lmobisocial/omlib/client/LongdanMessageProcessor;

    iput-object p2, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$3;->val$action:Lmobisocial/omlib/db/DatabaseCallable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 271
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$3;->this$0:Lmobisocial/omlib/client/LongdanMessageProcessor;

    # getter for: Lmobisocial/omlib/client/LongdanMessageProcessor;->mDbHelper:Lmobisocial/omlib/db/OMSQLiteHelper;
    invoke-static {v2}, Lmobisocial/omlib/client/LongdanMessageProcessor;->access$000(Lmobisocial/omlib/client/LongdanMessageProcessor;)Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v2

    invoke-virtual {v2}, Lmobisocial/omlib/db/OMSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 272
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 274
    :try_start_d
    iget-object v2, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$3;->val$action:Lmobisocial/omlib/db/DatabaseCallable;

    iget-object v3, p0, Lmobisocial/omlib/client/LongdanMessageProcessor$3;->this$0:Lmobisocial/omlib/client/LongdanMessageProcessor;

    # getter for: Lmobisocial/omlib/client/LongdanMessageProcessor;->mDbHelper:Lmobisocial/omlib/db/OMSQLiteHelper;
    invoke-static {v3}, Lmobisocial/omlib/client/LongdanMessageProcessor;->access$000(Lmobisocial/omlib/client/LongdanMessageProcessor;)Lmobisocial/omlib/db/OMSQLiteHelper;

    move-result-object v3

    invoke-interface {v2, v3}, Lmobisocial/omlib/db/DatabaseCallable;->call(Lmobisocial/omlib/db/OMSQLiteHelper;)Ljava/lang/Object;

    move-result-object v1

    .line 275
    .local v1, "r":Ljava/lang/Object;, "TV;"
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_20

    .line 278
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v1

    .end local v1    # "r":Ljava/lang/Object;, "TV;"
    :catchall_20
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method
