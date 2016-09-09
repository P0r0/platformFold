.class Lcom/gionee/gsp/util/GnCommonUtil$7$1;
.super Ljava/lang/Object;
.source "GnCommonUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/util/GnCommonUtil$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gionee/gsp/util/GnCommonUtil$7;

.field private final synthetic val$checkLocalEnvironmentDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/gionee/gsp/util/GnCommonUtil$7;Landroid/app/Dialog;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/util/GnCommonUtil$7$1;->this$1:Lcom/gionee/gsp/util/GnCommonUtil$7;

    iput-object p2, p0, Lcom/gionee/gsp/util/GnCommonUtil$7$1;->val$checkLocalEnvironmentDialog:Landroid/app/Dialog;

    .line 1627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1632
    :try_start_0
    iget-object v1, p0, Lcom/gionee/gsp/util/GnCommonUtil$7$1;->val$checkLocalEnvironmentDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 1637
    :goto_5
    return-void

    .line 1633
    :catch_6
    move-exception v0

    .line 1634
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method
