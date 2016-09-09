.class Lmobisocial/omlib/client/LongdanClient$5;
.super Ljava/lang/Object;
.source "LongdanClient.java"

# interfaces
.implements Lmobisocial/omlib/db/DatabaseCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/LongdanClient;->callOnDbThreadAndWait(Lmobisocial/omlib/db/DatabaseCallable;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmobisocial/omlib/db/DatabaseCallable",
        "<TTResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/LongdanClient;

.field final synthetic val$action:Lmobisocial/omlib/db/DatabaseCallable;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanClient;Lmobisocial/omlib/db/DatabaseCallable;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlib/client/LongdanClient;

    .prologue
    .line 441
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanClient$5;->this$0:Lmobisocial/omlib/client/LongdanClient;

    iput-object p2, p0, Lmobisocial/omlib/client/LongdanClient$5;->val$action:Lmobisocial/omlib/db/DatabaseCallable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lmobisocial/omlib/db/OMSQLiteHelper;)Ljava/lang/Object;
    .registers 3
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobisocial/omlib/db/OMSQLiteHelper;",
            ")TTResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 445
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient$5;->val$action:Lmobisocial/omlib/db/DatabaseCallable;

    invoke-interface {v0, p1}, Lmobisocial/omlib/db/DatabaseCallable;->call(Lmobisocial/omlib/db/OMSQLiteHelper;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
