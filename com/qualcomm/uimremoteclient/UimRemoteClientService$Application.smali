.class Lcom/qualcomm/uimremoteclient/UimRemoteClientService$Application;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/uimremoteclient/UimRemoteClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Application"
.end annotation


# instance fields
.field public key:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public parsingFail:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/uimremoteclient/UimRemoteClientService$1;)V
    .registers 2

    .line 70
    invoke-direct {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClientService$Application;-><init>()V

    return-void
.end method
