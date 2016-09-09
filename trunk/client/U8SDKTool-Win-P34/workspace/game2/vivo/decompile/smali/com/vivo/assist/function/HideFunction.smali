.class public Lcom/vivo/assist/function/HideFunction;
.super Lcom/vivo/assist/function/Function;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Lcom/vivo/assist/function/Function;-><init>()V

    new-instance v0, Lcom/vivo/assist/command/HideAssistButtonCommand;

    invoke-direct {v0}, Lcom/vivo/assist/command/HideAssistButtonCommand;-><init>()V

    iput-object v0, p0, Lcom/vivo/assist/function/HideFunction;->command:Lcom/vivo/assist/command/Command;

    const-string v0, "drawable"

    const-string v1, "hide"

    invoke-static {p1, v0, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vivo/assist/function/HideFunction;->icon:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/vivo/assist/function/HideFunction;->id:I

    const-string v0, "string"

    const-string v1, "hide"

    invoke-static {p1, v0, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vivo/assist/function/HideFunction;->title:I

    return-void
.end method
