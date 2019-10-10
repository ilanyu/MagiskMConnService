.class public final Lcom/qualcomm/uimremoteclient/UimRemoteClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;,
        Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;,
        Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;,
        Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;,
        Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;,
        Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;,
        Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;,
        Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;
    }
.end annotation


# static fields
.field public static final UIM_REMOTE_APDU:I = 0x2

.field public static final UIM_REMOTE_CONNECT:I = 0x3

.field public static final UIM_REMOTE_DISCONNECT:I = 0x4

.field public static final UIM_REMOTE_ERR_GENERIC_FAILURE:I = 0x1

.field public static final UIM_REMOTE_ERR_INVALID_PARAMETER:I = 0x3

.field public static final UIM_REMOTE_ERR_NOT_SUPPORTED:I = 0x2

.field public static final UIM_REMOTE_ERR_SUCCESS:I = 0x0

.field public static final UIM_REMOTE_EVENT:I = 0x1

.field public static final UIM_REMOTE_MSG_INDICATION:I = 0x3

.field public static final UIM_REMOTE_MSG_REQUEST:I = 0x1

.field public static final UIM_REMOTE_MSG_RESPONSE:I = 0x2

.field public static final UIM_REMOTE_MSG_UNKNOWN:I = 0x0

.field public static final UIM_REMOTE_POWER_DOWN:I = 0x6

.field public static final UIM_REMOTE_POWER_UP:I = 0x5

.field public static final UIM_REMOTE_RESET:I = 0x7

.field public static final UNKNOWN_REQ:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
