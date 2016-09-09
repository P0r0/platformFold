.class public Lcom/vivo/assist/function/GiftFunction;
.super Lcom/vivo/assist/function/Function;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Lcom/vivo/assist/function/Function;-><init>()V

    new-instance v0, Lcom/vivo/assist/command/StartGiftActivityCommand;

    invoke-direct {v0}, Lcom/vivo/assist/command/StartGiftActivityCommand;-><init>()V

    iput-object v0, p0, Lcom/vivo/assist/function/GiftFunction;->command:Lcom/vivo/assist/command/Command;

    const-string v0, "drawable"

    const-string v1, "floatview_item_34"

    invoke-static {p1, v0, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vivo/assist/function/GiftFunction;->icon:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/vivo/assist/function/GiftFunction;->id:I

    const-string v0, "string"

    const-string v1, "gift"

    invoke-static {p1, v0, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vivo/assist/function/GiftFunction;->title:I

    return-void
.end method
