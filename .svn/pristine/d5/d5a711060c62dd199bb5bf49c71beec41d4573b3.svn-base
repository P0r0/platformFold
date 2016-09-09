.class Lmobisocial/omlib/service/OmlibContentProvider$1;
.super Ljava/lang/Object;
.source "OmlibContentProvider.java"

# interfaces
.implements Lmobisocial/omlib/db/DatabaseRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/service/OmlibContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/service/OmlibContentProvider;

.field final synthetic val$blobHash:[B

.field final synthetic val$client:Lmobisocial/omlib/client/LongdanClient;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lmobisocial/omlib/service/OmlibContentProvider;Lmobisocial/omlib/client/LongdanClient;[BLandroid/net/Uri;)V
    .registers 5
    .param p1, "this$0"    # Lmobisocial/omlib/service/OmlibContentProvider;

    .prologue
    .line 206
    iput-object p1, p0, Lmobisocial/omlib/service/OmlibContentProvider$1;->this$0:Lmobisocial/omlib/service/OmlibContentProvider;

    iput-object p2, p0, Lmobisocial/omlib/service/OmlibContentProvider$1;->val$client:Lmobisocial/omlib/client/LongdanClient;

    iput-object p3, p0, Lmobisocial/omlib/service/OmlibContentProvider$1;->val$blobHash:[B

    iput-object p4, p0, Lmobisocial/omlib/service/OmlibContentProvider$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 16
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    const/4 v8, 0x0

    .line 210
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibContentProvider$1;->val$client:Lmobisocial/omlib/client/LongdanClient;

    iget-object v1, v0, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    iget-object v4, p0, Lmobisocial/omlib/service/OmlibContentProvider$1;->val$blobHash:[B

    iget-object v0, p0, Lmobisocial/omlib/service/OmlibContentProvider$1;->val$uri:Landroid/net/Uri;

    const-string v2, "blobLink"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v9, v8

    move-object v10, v8

    move-object v11, v8

    move-object v12, v8

    invoke-virtual/range {v1 .. v12}, Lmobisocial/omlib/client/ClientBlobUtils;->ensureBlobSource(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;[BLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;)V

    .line 211
    return-void
.end method
