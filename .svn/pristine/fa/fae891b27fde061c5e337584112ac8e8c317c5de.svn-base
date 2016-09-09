.class Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$1;
.super Ljava/lang/Object;
.source "FileUploadIntentService.java"

# interfaces
.implements Lmobisocial/omlib/service/util/ServiceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmobisocial/omlib/service/util/ServiceRunnable",
        "<",
        "Lmobisocial/omlib/api/OmletApi;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;

.field final synthetic val$final_upload:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;

    .prologue
    .line 260
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$1;->this$0:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$1;->val$final_upload:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 260
    check-cast p1, Lmobisocial/omlib/api/OmletApi;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$1;->run(Lmobisocial/omlib/api/OmletApi;)V

    return-void
.end method

.method public run(Lmobisocial/omlib/api/OmletApi;)V
    .registers 7
    .param p1, "omletApi"    # Lmobisocial/omlib/api/OmletApi;

    .prologue
    .line 265
    :try_start_0
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$1;->val$final_upload:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;

    iget-object v1, v2, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;->type:Ljava/lang/String;

    .line 266
    .local v1, "type":Ljava/lang/String;
    const-string v2, "game_clip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 267
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$1;->this$0:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$1;->val$final_upload:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;

    # invokes: Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->doVideoUpload(Lmobisocial/omlib/api/OmletApi;Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;)V
    invoke-static {v2, p1, v3}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->access$100(Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;Lmobisocial/omlib/api/OmletApi;Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;)V

    .line 276
    :goto_13
    return-void

    .line 268
    :cond_14
    const-string v2, "game_shot"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 269
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$1;->this$0:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$1;->val$final_upload:Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;

    # invokes: Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->doScreenshotUpload(Lmobisocial/omlib/api/OmletApi;Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;)V
    invoke-static {v2, p1, v3}, Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;->access$200(Lmobisocial/omlet/overlaybar/util/FileUploadIntentService;Lmobisocial/omlib/api/OmletApi;Lmobisocial/omlet/overlaybar/util/FileUploadIntentService$UploadProgress;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_13

    .line 273
    .end local v1    # "type":Ljava/lang/String;
    :catch_24
    move-exception v0

    .line 274
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lmobisocial/util/PlatformUtils;->makeUncheckedForThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 271
    .end local v0    # "t":Ljava/lang/Throwable;
    .restart local v1    # "type":Ljava/lang/String;
    :cond_2a
    :try_start_2a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported upload type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_43} :catch_24
.end method
