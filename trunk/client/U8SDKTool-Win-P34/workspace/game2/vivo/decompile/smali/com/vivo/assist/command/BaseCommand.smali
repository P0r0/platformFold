.class public abstract Lcom/vivo/assist/command/BaseCommand;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/assist/command/Command;


# instance fields
.field protected mState:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public excute(Landroid/content/Context;Ljava/lang/String;Lcom/vivo/assist/AssistWindowManager;)V
    .registers 4

    invoke-virtual {p3}, Lcom/vivo/assist/AssistWindowManager;->hideAssistPanel()V

    return-void
.end method
