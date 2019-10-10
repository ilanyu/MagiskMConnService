.class public Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "Pdc4Utils"

.field private static final b:I = 0x493e0


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    const-wide/32 v0, 0x493e0

    const/4 v2, 0x0

    :try_start_4
    const-string v3, "Pdc4Utils"

    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestServer started at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  isGet : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_29

    .line 97
    invoke-static {p1, p2}, Lcom/xiaomi/micloudsdk/request/utils/Request;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2d

    .line 98
    :cond_29
    invoke-static {p1, p2}, Lcom/xiaomi/micloudsdk/request/utils/Request;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 99
    :goto_2d
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 100
    new-instance p2, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    invoke-direct {p2, p1}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;-><init>(Lorg/json/JSONObject;)V

    .line 101
    iget-boolean p1, p2, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->a:Z

    if-nez p1, :cond_51

    const-string p1, "Pdc4Utils"

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_51} :catch_13f
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_51} :catch_120
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4 .. :try_end_51} :catch_101
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_51} :catch_ce
    .catch Lcom/xiaomi/micloudsdk/c/d; {:try_start_4 .. :try_end_51} :catch_71
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_51} :catch_52

    :cond_51
    return-object p2

    :catch_52
    move-exception p0

    const-string p1, "Pdc4Utils"

    const-string p2, "requestServer error"

    .line 151
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    new-instance p1, Lcom/xiaomi/opensdk/pdc/h;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestServer error:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/xiaomi/opensdk/pdc/h;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_71
    move-exception p0

    const-string p1, "Pdc4Utils"

    .line 125
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestServer error:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/c/d;->a()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    new-instance p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    invoke-direct {p1}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;-><init>()V

    .line 127
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/c/d;->a()I

    move-result p2

    const/16 v3, 0x191

    if-eq p2, v3, :cond_c7

    const/16 v3, 0x193

    if-eq p2, v3, :cond_c7

    const/16 v3, 0x1f4

    if-eq p2, v3, :cond_be

    const/16 v0, 0x1f7

    if-eq p2, v0, :cond_b2

    .line 144
    iput-boolean v2, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->a:Z

    .line 145
    sget-object p2, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iput-object p2, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 146
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/c/d;->getMessage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->b:Ljava/lang/String;

    goto :goto_cd

    .line 139
    :cond_b2
    iput-boolean v2, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->a:Z

    .line 140
    sget-object p2, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->d:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iput-object p2, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 141
    iget p0, p0, Lcom/xiaomi/micloudsdk/c/d;->l:I

    int-to-long v0, p0

    iput-wide v0, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->f:J

    goto :goto_cd

    .line 134
    :cond_be
    iput-boolean v2, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->a:Z

    .line 135
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->d:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iput-object p0, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 136
    iput-wide v0, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->f:J

    goto :goto_cd

    .line 130
    :cond_c7
    iput-boolean v2, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->a:Z

    .line 131
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->b:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iput-object p0, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    :goto_cd
    return-object p1

    :catch_ce
    move-exception p0

    const-string p1, "Pdc4Utils"

    const-string p2, "requestServer error"

    .line 115
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    invoke-static {p0}, Lcom/xiaomi/opensdk/a/b;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_ea

    .line 117
    new-instance p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;-><init>()V

    .line 118
    iput-boolean v2, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->a:Z

    .line 119
    sget-object p1, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->d:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 120
    iput-wide v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->f:J

    return-object p0

    .line 123
    :cond_ea
    new-instance p1, Lcom/xiaomi/opensdk/pdc/h;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestServer error:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/xiaomi/opensdk/pdc/h;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_101
    move-exception p0

    const-string p1, "Pdc4Utils"

    const-string p2, "requestServer error"

    .line 112
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    new-instance p1, Lcom/xiaomi/opensdk/pdc/h;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestServer error:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/xiaomi/opensdk/pdc/h;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_120
    move-exception p0

    const-string p1, "Pdc4Utils"

    const-string p2, "requestServer error"

    .line 109
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    new-instance p1, Lcom/xiaomi/opensdk/pdc/h;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestServer error:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/xiaomi/opensdk/pdc/h;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_13f
    move-exception p0

    const-string p1, "Pdc4Utils"

    const-string p2, "requestServer error"

    .line 106
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    new-instance p1, Lcom/xiaomi/opensdk/pdc/h;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestServer error:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/xiaomi/opensdk/pdc/h;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(I)Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    if-eqz p0, :cond_31

    const/16 v0, 0x2711

    if-eq p0, v0, :cond_2e

    const/16 v0, 0x271b

    if-eq p0, v0, :cond_2e

    const v0, 0xc361

    if-eq p0, v0, :cond_2b

    const v0, 0xcb20

    if-eq p0, v0, :cond_28

    const v0, 0xcf08

    if-eq p0, v0, :cond_2e

    packed-switch p0, :pswitch_data_34

    packed-switch p0, :pswitch_data_3c

    packed-switch p0, :pswitch_data_4e

    .line 62
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    .line 60
    :pswitch_25
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    .line 58
    :cond_28
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->c:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    .line 56
    :cond_2b
    :pswitch_2b
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    .line 45
    :cond_2e
    :pswitch_2e
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->d:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    .line 38
    :cond_31
    sget-object p0, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->a:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object p0

    :pswitch_data_34
    .packed-switch 0x2718
        :pswitch_2b
        :pswitch_2e
    .end packed-switch

    :pswitch_data_3c
    .packed-switch 0x9c40
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_25
    .end packed-switch

    :pswitch_data_4e
    .packed-switch 0xc352
        :pswitch_2e
        :pswitch_2b
    .end packed-switch
.end method

.method public static a(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 181
    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->a:Z

    if-eqz v0, :cond_a2

    .line 183
    :try_start_4
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->g:Lorg/json/JSONObject;

    const-string v1, "conflictType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    .line 186
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 187
    sget-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->a:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    :goto_16
    move-object v8, v0

    goto :goto_39

    :cond_18
    const-string v1, "eTag"

    .line 188
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 189
    sget-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->b:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    goto :goto_16

    :cond_23
    const-string v1, "id"

    .line 190
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 191
    sget-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->c:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    goto :goto_16

    :cond_2e
    const-string v1, "uniqueKey"

    .line 192
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 193
    sget-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->d:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    goto :goto_16

    .line 200
    :goto_39
    sget-object v0, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->a:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    const/4 v1, 0x0

    if-ne v8, v0, :cond_4d

    .line 201
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->g:Lorg/json/JSONObject;

    const-string v2, "record"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 202
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->a(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/j;

    move-result-object v0

    move-object v9, v0

    move-object v10, v1

    goto :goto_5b

    .line 205
    :cond_4d
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->g:Lorg/json/JSONObject;

    const-string v2, "conflictRecord"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 206
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->a(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/j;

    move-result-object v0

    move-object v10, v0

    move-object v9, v1

    .line 209
    :goto_5b
    new-instance v0, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    iget-boolean v2, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->a:Z

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iget-wide v5, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->f:J

    iget-object v7, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->h:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;Lcom/xiaomi/opensdk/pdc/j;Lcom/xiaomi/opensdk/pdc/j;)V

    return-object v0

    .line 195
    :cond_6c
    new-instance p0, Lcom/xiaomi/opensdk/pdc/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown conflict type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/opensdk/pdc/h;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_83
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_83} :catch_83

    :catch_83
    move-exception p0

    const-string v0, "Pdc4Utils"

    const-string v1, "parseUploadResult error "

    .line 212
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    new-instance v0, Lcom/xiaomi/opensdk/pdc/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseUploadResult error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/xiaomi/opensdk/pdc/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_a2
    new-instance v0, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    iget-boolean v2, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->a:Z

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iget-wide v5, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->f:J

    iget-object v7, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->h:Ljava/lang/String;

    sget-object v8, Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;->a:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;Lcom/xiaomi/opensdk/pdc/j;Lcom/xiaomi/opensdk/pdc/j;)V

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/j;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    const-string v0, "eTag"

    const-wide/16 v1, -0x1

    .line 157
    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v0, "id"

    const/4 v1, 0x0

    .line 158
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "uniqueKey"

    .line 159
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "parentId"

    .line 160
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "type"

    .line 161
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "status"

    .line 162
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "normal"

    .line 164
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 165
    sget-object v0, Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;->a:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    :goto_31
    move-object v12, v0

    goto :goto_3e

    :cond_33
    const-string v1, "deleted"

    .line 166
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 167
    sget-object v0, Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;->b:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    goto :goto_31

    :goto_3e
    const-string v0, "contentJson"

    .line 171
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v0, "assetList"

    .line 172
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_57

    .line 174
    new-instance v0, Lcom/xiaomi/opensdk/pdc/j;

    invoke-static {p0, v9}, Lcom/xiaomi/opensdk/pdc/asset/f;->a(Lorg/json/JSONArray;Ljava/lang/String;)[Lcom/xiaomi/opensdk/pdc/asset/b;

    move-result-object v11

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Lcom/xiaomi/opensdk/pdc/j;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lcom/xiaomi/opensdk/pdc/asset/b;Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;)V

    return-object v0

    .line 177
    :cond_57
    new-instance p0, Lcom/xiaomi/opensdk/pdc/j;

    const/4 v11, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v12}, Lcom/xiaomi/opensdk/pdc/j;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lcom/xiaomi/opensdk/pdc/asset/b;Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;)V

    return-object p0

    .line 169
    :cond_5f
    new-instance p0, Lcom/xiaomi/opensdk/pdc/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/opensdk/pdc/h;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 221
    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->a:Z

    if-eqz v0, :cond_72

    .line 223
    :try_start_4
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->g:Lorg/json/JSONObject;

    const-string v1, "watermark"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 224
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->g:Lorg/json/JSONObject;

    const-string v1, "syncToken"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 225
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->g:Lorg/json/JSONObject;

    const-string v1, "hasMore"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 226
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->g:Lorg/json/JSONObject;

    const-string v1, "records"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 227
    new-instance v13, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v13, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 228
    :goto_2e
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_42

    .line 229
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 230
    invoke-static {v2}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->a(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/j;

    move-result-object v2

    .line 231
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 233
    :cond_42
    new-instance v0, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;

    iget-boolean v3, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->a:Z

    iget-object v4, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iget-wide v6, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->f:J

    iget-object v8, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->h:Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;JLjava/lang/String;ZLjava/util/ArrayList;)V
    :try_end_52
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_52} :catch_53

    return-object v0

    :catch_53
    move-exception p0

    const-string v0, "Pdc4Utils"

    const-string v1, "parseDownloadResult error "

    .line 236
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    new-instance v0, Lcom/xiaomi/opensdk/pdc/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseDownloadResult error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/xiaomi/opensdk/pdc/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_72
    new-instance v0, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;

    iget-boolean v2, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->a:Z

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iget-wide v5, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->f:J

    iget-object v7, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->h:Ljava/lang/String;

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;JLjava/lang/String;ZLjava/util/ArrayList;)V

    return-object v0
.end method

.method public static c(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 246
    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->a:Z

    if-eqz v0, :cond_8a

    .line 248
    :try_start_4
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->g:Lorg/json/JSONObject;

    const-string v1, "list"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_8a

    .line 250
    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 251
    :goto_18
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_5a

    .line 252
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 253
    new-instance v3, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    invoke-direct {v3, v2}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;-><init>(Lorg/json/JSONObject;)V

    .line 254
    invoke-static {v3}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->a(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object v3

    .line 255
    invoke-virtual {v3}, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;->e()Z

    move-result v4

    if-nez v4, :cond_54

    const-string v4, "Pdc4Utils"

    .line 256
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sub item "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " got error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4, v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    :cond_54
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 260
    :cond_5a
    new-instance v0, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;

    iget-boolean v2, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->a:Z

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iget-wide v5, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->f:J

    iget-object v7, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->h:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;Ljava/util/ArrayList;)V
    :try_end_6a
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_6a} :catch_6b

    return-object v0

    :catch_6b
    move-exception p0

    const-string v0, "Pdc4Utils"

    const-string v1, "parseBatchUploadResult error "

    .line 263
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    new-instance v0, Lcom/xiaomi/opensdk/pdc/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseBatchUploadResult error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/xiaomi/opensdk/pdc/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_8a
    new-instance v0, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;

    iget-boolean v2, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->a:Z

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iget-wide v5, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->f:J

    iget-object v7, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->h:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public static d(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 272
    iget-boolean v1, v0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->a:Z

    if-eqz v1, :cond_29

    .line 273
    iget-object v1, v0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->g:Lorg/json/JSONObject;

    const-string v2, "record"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 276
    invoke-static {v1}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->a(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/j;

    move-result-object v1

    :goto_14
    move-object v9, v1

    goto :goto_18

    :cond_16
    const/4 v1, 0x0

    goto :goto_14

    .line 280
    :goto_18
    new-instance v1, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;

    iget-boolean v3, v0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->a:Z

    iget-object v4, v0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->b:Ljava/lang/String;

    iget-object v5, v0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iget-wide v6, v0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->f:J

    iget-object v8, v0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->h:Ljava/lang/String;

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;Lcom/xiaomi/opensdk/pdc/j;)V

    return-object v1

    .line 282
    :cond_29
    new-instance v1, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;

    iget-boolean v11, v0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->a:Z

    iget-object v12, v0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->b:Ljava/lang/String;

    iget-object v13, v0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iget-wide v14, v0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->f:J

    iget-object v0, v0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->h:Ljava/lang/String;

    const/16 v17, 0x0

    move-object v10, v1

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v17}, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;Lcom/xiaomi/opensdk/pdc/j;)V

    return-object v1
.end method

.method public static e(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 287
    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->a:Z

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->g:Lorg/json/JSONObject;

    if-eqz v0, :cond_6f

    .line 289
    :try_start_8
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->g:Lorg/json/JSONObject;

    const-string v1, "cursor"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 290
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->g:Lorg/json/JSONObject;

    const-string v1, "hasMore"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 291
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->g:Lorg/json/JSONObject;

    const-string v1, "records"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 292
    new-instance v12, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 293
    :goto_2b
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3f

    .line 294
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 295
    invoke-static {v2}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->a(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/j;

    move-result-object v2

    .line 296
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 298
    :cond_3f
    new-instance v0, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;

    iget-boolean v4, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->a:Z

    iget-object v5, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iget-wide v7, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->f:J

    iget-object v9, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->h:Ljava/lang/String;

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;)V
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_4f} :catch_50

    return-object v0

    :catch_50
    move-exception p0

    const-string v0, "Pdc4Utils"

    const-string v1, "FetchChildrenOperation error "

    .line 301
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    new-instance v0, Lcom/xiaomi/opensdk/pdc/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FetchChildrenOperation error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/xiaomi/opensdk/pdc/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_6f
    new-instance v0, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;

    iget-boolean v2, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->a:Z

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iget-wide v5, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->f:J

    iget-object v7, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->h:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;)V

    return-object v0
.end method

.method public static f(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 311
    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->a:Z

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->g:Lorg/json/JSONObject;

    if-eqz v0, :cond_6e

    .line 313
    :try_start_8
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->g:Lorg/json/JSONObject;

    const-string v1, "hasMore"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 314
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->g:Lorg/json/JSONObject;

    const-string v1, "records"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 315
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->g:Lorg/json/JSONObject;

    const-string v2, "beginKey"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 316
    new-instance v11, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 317
    :goto_2a
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3e

    .line 318
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 319
    invoke-static {v2}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->a(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/j;

    move-result-object v2

    .line 320
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 322
    :cond_3e
    new-instance v0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;

    iget-boolean v3, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->a:Z

    iget-object v4, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iget-wide v6, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->f:J

    iget-object v8, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->h:Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;Lorg/json/JSONObject;ZLjava/util/ArrayList;)V
    :try_end_4e
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_4e} :catch_4f

    return-object v0

    :catch_4f
    move-exception p0

    const-string v0, "Pdc4Utils"

    const-string v1, "FetchChildrenOperation error "

    .line 325
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    new-instance v0, Lcom/xiaomi/opensdk/pdc/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FetchChildrenOperation error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/xiaomi/opensdk/pdc/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_6e
    new-instance v0, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;

    iget-boolean v2, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->a:Z

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->e:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iget-wide v5, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->f:J

    iget-object v7, p0, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->h:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;Lorg/json/JSONObject;ZLjava/util/ArrayList;)V

    return-object v0
.end method
