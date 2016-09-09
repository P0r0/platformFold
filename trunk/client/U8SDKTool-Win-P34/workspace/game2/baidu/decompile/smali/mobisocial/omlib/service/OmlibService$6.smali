.class Lmobisocial/omlib/service/OmlibService$6;
.super Ljava/lang/Object;
.source "OmlibService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/service/OmlibService;->handlePushMessage(ILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/service/OmlibService;

.field final synthetic val$startId:I

.field final synthetic val$wl:I


# direct methods
.method constructor <init>(Lmobisocial/omlib/service/OmlibService;II)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/omlib/service/OmlibService;

    .prologue
    .line 244
    iput-object p1, p0, Lmobisocial/omlib/service/OmlibService$6;->this$0:Lmobisocial/omlib/service/OmlibService;

    iput p2, p0, Lmobisocial/omlib/service/OmlibService$6;->val$wl:I

    iput p3, p0, Lmobisocial/omlib/service/OmlibService$6;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 248
    iget v0, p0, Lmobisocial/omlib/service/OmlibService$6;->val$wl:I

    if-eqz v0, :cond_9

    .line 249
    iget v0, p0, Lmobisocial/omlib/service/OmlibService$6;->val$wl:I

    invoke-static {v0}, Lmobisocial/util/PlatformUtils;->releaseWakeLock(I)V

    .line 251
    :cond_9
    iget-object v0, p0, Lmobisocial/omlib/service/OmlibService$6;->this$0:Lmobisocial/omlib/service/OmlibService;

    iget v1, p0, Lmobisocial/omlib/service/OmlibService$6;->val$startId:I

    invoke-virtual {v0, v1}, Lmobisocial/omlib/service/OmlibService;->stopSelf(I)V

    .line 252
    return-void
.end method
