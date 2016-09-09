.class public Lcom/vivo/assist/command/HideAssistButtonCommand;
.super Lcom/vivo/assist/command/BaseCommand;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/vivo/assist/command/BaseCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public excute(Landroid/content/Context;Ljava/lang/String;Lcom/vivo/assist/AssistWindowManager;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/vivo/assist/command/BaseCommand;->excute(Landroid/content/Context;Ljava/lang/String;Lcom/vivo/assist/AssistWindowManager;)V

    invoke-virtual {p3}, Lcom/vivo/assist/AssistWindowManager;->hideAssistButton()V

    return-void
.end method
