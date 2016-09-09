.class Lcom/vivo/upgrade/utils/MdFiveCheckTask$1;
.super Ljava/lang/Object;
.source "MdFiveCheckTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/upgrade/utils/MdFiveCheckTask;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/upgrade/utils/MdFiveCheckTask;


# direct methods
.method constructor <init>(Lcom/vivo/upgrade/utils/MdFiveCheckTask;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask$1;->this$0:Lcom/vivo/upgrade/utils/MdFiveCheckTask;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask$1;->this$0:Lcom/vivo/upgrade/utils/MdFiveCheckTask;

    # getter for: Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->access$2(Lcom/vivo/upgrade/utils/MdFiveCheckTask;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/upgrade/utils/MdFiveCheckTask$1;->this$0:Lcom/vivo/upgrade/utils/MdFiveCheckTask;

    # getter for: Lcom/vivo/upgrade/utils/MdFiveCheckTask;->mFilePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/vivo/upgrade/utils/MdFiveCheckTask;->access$3(Lcom/vivo/upgrade/utils/MdFiveCheckTask;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/upgrade/utils/PackageUtils;->installSilent(Landroid/content/Context;Ljava/lang/String;)I

    .line 98
    return-void
.end method
