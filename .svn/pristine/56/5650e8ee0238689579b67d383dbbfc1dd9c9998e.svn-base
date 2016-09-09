.class Lmobisocial/util/PlatformUtils$ContactsUploader$1;
.super Ljava/lang/Object;
.source "PlatformUtils.java"

# interfaces
.implements Lmobisocial/omlib/db/DatabaseRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/util/PlatformUtils$ContactsUploader;->execute(Landroid/os/CancellationSignal;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/util/PlatformUtils$ContactsUploader;


# direct methods
.method constructor <init>(Lmobisocial/util/PlatformUtils$ContactsUploader;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/util/PlatformUtils$ContactsUploader;

    .prologue
    .line 130
    iput-object p1, p0, Lmobisocial/util/PlatformUtils$ContactsUploader$1;->this$0:Lmobisocial/util/PlatformUtils$ContactsUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lmobisocial/omlib/db/OMSQLiteHelper;Lmobisocial/omlib/db/PostCommit;)V
    .registers 7
    .param p1, "dbHelper"    # Lmobisocial/omlib/db/OMSQLiteHelper;
    .param p2, "postCommit"    # Lmobisocial/omlib/db/PostCommit;

    .prologue
    .line 134
    iget-object v1, p0, Lmobisocial/util/PlatformUtils$ContactsUploader$1;->this$0:Lmobisocial/util/PlatformUtils$ContactsUploader;

    const-class v0, Lmobisocial/omlib/db/entity/OMSetting;

    const-string v2, "contactImport"

    invoke-virtual {p1, v0, v2}, Lmobisocial/omlib/db/OMSQLiteHelper;->getObjectByKey(Ljava/lang/Class;Ljava/lang/Object;)Lmobisocial/omlib/db/util/OMBase;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/db/entity/OMSetting;

    iput-object v0, v1, Lmobisocial/util/PlatformUtils$ContactsUploader;->settings:Lmobisocial/omlib/db/entity/OMSetting;

    .line 135
    iget-object v0, p0, Lmobisocial/util/PlatformUtils$ContactsUploader$1;->this$0:Lmobisocial/util/PlatformUtils$ContactsUploader;

    iget-object v0, v0, Lmobisocial/util/PlatformUtils$ContactsUploader;->settings:Lmobisocial/omlib/db/entity/OMSetting;

    if-nez v0, :cond_38

    .line 136
    iget-object v0, p0, Lmobisocial/util/PlatformUtils$ContactsUploader$1;->this$0:Lmobisocial/util/PlatformUtils$ContactsUploader;

    new-instance v1, Lmobisocial/omlib/db/entity/OMSetting;

    invoke-direct {v1}, Lmobisocial/omlib/db/entity/OMSetting;-><init>()V

    iput-object v1, v0, Lmobisocial/util/PlatformUtils$ContactsUploader;->settings:Lmobisocial/omlib/db/entity/OMSetting;

    .line 137
    iget-object v0, p0, Lmobisocial/util/PlatformUtils$ContactsUploader$1;->this$0:Lmobisocial/util/PlatformUtils$ContactsUploader;

    iget-object v0, v0, Lmobisocial/util/PlatformUtils$ContactsUploader;->settings:Lmobisocial/omlib/db/entity/OMSetting;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lmobisocial/omlib/db/entity/OMSetting;->longValue:Ljava/lang/Long;

    .line 138
    iget-object v0, p0, Lmobisocial/util/PlatformUtils$ContactsUploader$1;->this$0:Lmobisocial/util/PlatformUtils$ContactsUploader;

    iget-object v0, v0, Lmobisocial/util/PlatformUtils$ContactsUploader;->settings:Lmobisocial/omlib/db/entity/OMSetting;

    const-string v1, "contactImport"

    iput-object v1, v0, Lmobisocial/omlib/db/entity/OMSetting;->key:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lmobisocial/util/PlatformUtils$ContactsUploader$1;->this$0:Lmobisocial/util/PlatformUtils$ContactsUploader;

    iget-object v0, v0, Lmobisocial/util/PlatformUtils$ContactsUploader;->settings:Lmobisocial/omlib/db/entity/OMSetting;

    invoke-virtual {p1, v0}, Lmobisocial/omlib/db/OMSQLiteHelper;->insertObject(Lmobisocial/omlib/db/util/OMBase;)V

    .line 141
    :cond_38
    return-void
.end method
