.class Lmobisocial/omlib/service/OmlibService$7;
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

.field final synthetic val$wl:I


# direct methods
.method constructor <init>(Lmobisocial/omlib/service/OmlibService;I)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlib/service/OmlibService;

    .prologue
    .line 255
    iput-object p1, p0, Lmobisocial/omlib/service/OmlibService$7;->this$0:Lmobisocial/omlib/service/OmlibService;

    iput p2, p0, Lmobisocial/omlib/service/OmlibService$7;->val$wl:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 259
    iget v0, p0, Lmobisocial/omlib/service/OmlibService$7;->val$wl:I

    if-eqz v0, :cond_9

    .line 260
    iget v0, p0, Lmobisocial/omlib/service/OmlibService$7;->val$wl:I

    invoke-static {v0}, Lmobisocial/util/PlatformUtils;->releaseWakeLock(I)V

    .line 262
    :cond_9
    return-void
.end method
