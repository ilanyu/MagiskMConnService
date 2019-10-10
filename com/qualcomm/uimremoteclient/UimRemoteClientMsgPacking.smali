.class public Lcom/qualcomm/uimremoteclient/UimRemoteClientMsgPacking;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VSC-UimMsgPacking"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static packMsg(IILjava/lang/Object;)[B
    .registers 6

    const-string v0, "VSC-UimMsgPacking"

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packMsg() - msgId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msgType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3d

    packed-switch p0, :pswitch_data_4e

    :try_start_25
    const-string p0, "VSC-UimMsgPacking"

    goto :goto_37

    .line 28
    :pswitch_28
    check-cast p2, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;

    invoke-virtual {p2}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduReq;->toByteArray()[B

    move-result-object p0

    goto :goto_35

    .line 25
    :pswitch_2f
    check-cast p2, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;

    invoke-virtual {p2}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventReq;->toByteArray()[B

    move-result-object p0

    :goto_35
    move-object v1, p0

    goto :goto_4c

    :goto_37
    const-string p1, "unexpected msgId"

    .line 31
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    :cond_3d
    const-string p0, "VSC-UimMsgPacking"

    const-string p1, "unexpected msgType"

    .line 34
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_44} :catch_45

    goto :goto_4c

    :catch_45
    const-string p0, "VSC-UimMsgPacking"

    const-string p1, "Exception in msg protobuf encoding"

    .line 37
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4c
    return-object v1

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_28
    .end packed-switch
.end method

.method public static packTag(Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;)[B
    .registers 3

    const-string v0, "VSC-UimMsgPacking"

    const-string v1, "packTag()"

    .line 91
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :try_start_7
    invoke-virtual {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->toByteArray()[B

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    const-string p0, "VSC-UimMsgPacking"

    const-string v0, "Exception in msg protobuf encoding"

    .line 96
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_14
    return-object p0
.end method

.method public static unpackMsg(II[B)Ljava/lang/Object;
    .registers 6

    const-string v0, "VSC-UimMsgPacking"

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unpackMsg() - msgId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msgType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_39

    packed-switch p0, :pswitch_data_68

    :try_start_25
    const-string p0, "VSC-UimMsgPacking"

    goto :goto_33

    .line 54
    :pswitch_28
    invoke-static {p2}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;->parseFrom([B)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduResp;

    move-result-object p0

    goto :goto_31

    .line 51
    :pswitch_2d
    invoke-static {p2}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;->parseFrom([B)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteEventResp;

    move-result-object p0

    :goto_31
    move-object v1, p0

    goto :goto_66

    :goto_33
    const-string p1, "unexpected msgId"

    .line 57
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    :cond_39
    const/4 v0, 0x3

    if-ne p1, v0, :cond_57

    packed-switch p0, :pswitch_data_70

    const-string p0, "VSC-UimMsgPacking"

    goto :goto_51

    .line 72
    :pswitch_42
    invoke-static {p2}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;->parseFrom([B)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerDownInd;

    move-result-object p0

    goto :goto_31

    .line 69
    :pswitch_47
    invoke-static {p2}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;->parseFrom([B)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemotePowerUpInd;

    move-result-object p0

    goto :goto_31

    .line 62
    :pswitch_4c
    invoke-static {p2}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;->parseFrom([B)Lcom/qualcomm/uimremoteclient/UimRemoteClient$UimRemoteApduInd;

    move-result-object p0

    goto :goto_31

    :goto_51
    const-string p1, "unexpected msgId"

    .line 77
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    :cond_57
    const-string p0, "VSC-UimMsgPacking"

    const-string p1, "unexpected msgType"

    .line 81
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_5e} :catch_5f

    goto :goto_66

    :catch_5f
    const-string p0, "VSC-UimMsgPacking"

    const-string p1, "Exception in msg protobuf decoding"

    .line 84
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_66
    :pswitch_66
    return-object v1

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_28
    .end packed-switch

    :pswitch_data_70
    .packed-switch 0x2
        :pswitch_4c
        :pswitch_66
        :pswitch_66
        :pswitch_47
        :pswitch_42
        :pswitch_66
    .end packed-switch
.end method

.method public static unpackTag([B)Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;
    .registers 3

    const-string v0, "VSC-UimMsgPacking"

    const-string v1, "unpackTag()"

    .line 102
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :try_start_7
    invoke-static {p0}, Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;->parseFrom([B)Lcom/qualcomm/uimremoteclient/UimRemoteClient$MessageTag;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    const-string p0, "VSC-UimMsgPacking"

    const-string v0, "Exception in tag protobuf decoding"

    .line 107
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_14
    return-object p0
.end method
