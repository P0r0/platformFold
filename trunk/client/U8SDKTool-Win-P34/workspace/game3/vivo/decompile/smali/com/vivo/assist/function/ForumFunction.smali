.class public Lcom/vivo/assist/function/ForumFunction;
.super Lcom/vivo/assist/function/Function;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Lcom/vivo/assist/function/Function;-><init>()V

    new-instance v0, Lcom/vivo/assist/command/StartForumActivityCommand;

    invoke-direct {v0}, Lcom/vivo/assist/command/StartForumActivityCommand;-><init>()V

    iput-object v0, p0, Lcom/vivo/assist/function/ForumFunction;->command:Lcom/vivo/assist/command/Command;

    const-string v0, "drawable"

    const-string v1, "floatview_item_24"

    invoke-static {p1, v0, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vivo/assist/function/ForumFunction;->icon:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/vivo/assist/function/ForumFunction;->id:I

    const-string v0, "string"

    const-string v1, "forum"

    invoke-static {p1, v0, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vivo/assist/function/ForumFunction;->title:I

    return-void
.end method
