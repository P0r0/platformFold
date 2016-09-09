.class Lmobisocial/omlib/client/ClientAppUtils$1;
.super Ljava/lang/Object;
.source "ClientAppUtils.java"

# interfaces
.implements Lmobisocial/omlib/db/DatabaseRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientAppUtils;->setSetting(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/ClientAppUtils;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientAppUtils;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientAppUtils;

    .prologue
    .line 55
    iput-object p1, p0, Lmobisocial/omlib/client/ClientAppUtils$1;->this$0:Lmobisocial/omlib/client/ClientAppUtils;

    iput-object p2, p0, Lmobisocial/omlib/client/ClientAppUtils$1;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lmobisocial/omlib/client/ClientAppUtils$1;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 6
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 59
    iget-object v0, p0, Lmobisocial/omlib/client/ClientAppUtils$1;->this$0:Lmobisocial/omlib/client/ClientAppUtils;

    iget-object v1, p0, Lmobisocial/omlib/client/ClientAppUtils$1;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lmobisocial/omlib/client/ClientAppUtils$1;->val$value:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2, v1, v2}, Lmobisocial/omlib/client/ClientAppUtils;->setSettingOnDbThread(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    return-void
.end method
