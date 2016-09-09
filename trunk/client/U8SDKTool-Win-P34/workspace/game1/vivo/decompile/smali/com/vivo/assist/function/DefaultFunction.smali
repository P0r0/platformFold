.class public Lcom/vivo/assist/function/DefaultFunction;
.super Lcom/vivo/assist/function/Function;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 7

    invoke-direct {p0}, Lcom/vivo/assist/function/Function;-><init>()V

    const-string v0, "drawable"

    const-string v1, "floatview_item_34"

    invoke-static {p1, v0, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vivo/assist/function/DefaultFunction;->icon:I

    iput p3, p0, Lcom/vivo/assist/function/DefaultFunction;->id:I

    iput-object p2, p0, Lcom/vivo/assist/function/DefaultFunction;->titleText:Ljava/lang/String;

    new-instance v0, Lcom/vivo/assist/command/StartDefaultActivityCommand;

    iget v1, p0, Lcom/vivo/assist/function/DefaultFunction;->id:I

    iget-object v2, p0, Lcom/vivo/assist/function/DefaultFunction;->titleText:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/vivo/assist/command/StartDefaultActivityCommand;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/assist/function/DefaultFunction;->command:Lcom/vivo/assist/command/Command;

    return-void
.end method
