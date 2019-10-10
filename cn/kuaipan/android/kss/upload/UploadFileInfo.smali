.class public Lcn/kuaipan/android/kss/upload/UploadFileInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/kuaipan/android/kss/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/kuaipan/android/kss/upload/UploadFileInfo$BlockInfo;
    }
.end annotation


# static fields
.field private static final W:Ljava/lang/String; = "UploadFileInfo"


# instance fields
.field private X:Ljava/lang/String;

.field private final Y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/kuaipan/android/kss/upload/UploadFileInfo$BlockInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->Y:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 10

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->Y:Ljava/util/ArrayList;

    .line 109
    :try_start_a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "sha1"

    .line 110
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->X:Ljava/lang/String;

    const-string v1, "block_infos"

    .line 111
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_20

    return-void

    .line 115
    :cond_20
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_25
    if-ge v2, v1, :cond_75

    .line 117
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_30

    move-object v5, v4

    goto :goto_36

    :cond_30
    const-string v5, "sha1"

    .line 118
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_36
    if-nez v3, :cond_39

    goto :goto_3f

    :cond_39
    const-string v4, "md5"

    .line 119
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_3f
    const/4 v6, -0x1

    if-nez v3, :cond_43

    goto :goto_49

    :cond_43
    const-string v7, "size"

    .line 120
    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 121
    :goto_49
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5b

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5b

    if-ltz v6, :cond_5b

    int-to-long v6, v6

    .line 122
    invoke-virtual {p0, v5, v4, v6, v7}, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->a(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_5b
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_5b} :catch_5e

    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :catch_5e
    move-exception v0

    const-string v1, "UploadFileInfo"

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed parser UploadFileInfo from a String. The String:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_75
    return-void
.end method

.method public static a(Ljava/io/File;)Lcn/kuaipan/android/kss/upload/UploadFileInfo;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/kuaipan/android/a/e;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 45
    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_4} :catch_142
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_4} :catch_13a
    .catchall {:try_start_2 .. :try_end_4} :catchall_136

    :try_start_4
    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_7} :catch_133
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_13a
    .catchall {:try_start_4 .. :try_end_7} :catchall_136

    .line 46
    :try_start_7
    new-instance v3, Lcn/kuaipan/android/kss/upload/UploadFileInfo;

    invoke-direct {v3}, Lcn/kuaipan/android/kss/upload/UploadFileInfo;-><init>()V

    const-string v4, "SHA1"

    .line 48
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    const-string v5, "SHA1"

    .line 49
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    const-string v6, "MD5"

    .line 50
    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    const/16 v7, 0x2000

    .line 52
    new-array v7, v7, [B

    const-wide/16 v11, 0x0

    const/4 v13, 0x1

    .line 56
    :goto_25
    invoke-virtual {v2, v7}, Ljava/io/InputStream;->read([B)I

    move-result v14
    :try_end_29
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_29} :catch_12d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_29} :catch_127
    .catchall {:try_start_7 .. :try_end_29} :catchall_123

    move-object/from16 v16, v2

    const-wide/32 v1, 0x400000

    if-ltz v14, :cond_c7

    int-to-long v8, v14

    add-long/2addr v11, v8

    const/4 v8, 0x0

    .line 58
    :try_start_33
    invoke-virtual {v4, v7, v8, v14}, Ljava/security/MessageDigest;->update([BII)V

    int-to-long v8, v13

    mul-long v8, v8, v1

    cmp-long v17, v11, v8

    if-gez v17, :cond_47

    const/4 v15, 0x0

    .line 61
    invoke-virtual {v5, v7, v15, v14}, Ljava/security/MessageDigest;->update([BII)V

    .line 62
    invoke-virtual {v6, v7, v15, v14}, Ljava/security/MessageDigest;->update([BII)V

    move-object/from16 v2, v16

    goto :goto_25

    :cond_47
    const/4 v15, 0x0

    sub-long v8, v11, v8

    long-to-int v8, v8

    sub-int v8, v14, v8

    add-int/lit8 v13, v13, 0x1

    const-string v9, "UploadFileInfo"

    .line 66
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "blockoffset: "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " len: "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " pos: "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " blockIndex"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " blockOffset > input.length: "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v1, v8

    array-length v10, v7

    move-wide/from16 v18, v11

    int-to-long v10, v10

    cmp-long v1, v1, v10

    if-lez v1, :cond_89

    const/4 v1, 0x1

    goto :goto_8a

    :cond_89
    const/4 v1, 0x0

    :goto_8a
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 68
    invoke-virtual {v5, v7, v1, v8}, Ljava/security/MessageDigest;->update([BII)V

    .line 69
    invoke-virtual {v6, v7, v1, v8}, Ljava/security/MessageDigest;->update([BII)V

    .line 71
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcn/kuaipan/android/utils/b;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcn/kuaipan/android/utils/b;->a([B)Ljava/lang/String;

    move-result-object v2

    const-wide/32 v9, 0x400000

    .line 71
    invoke-virtual {v3, v1, v2, v9, v10}, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->a(Ljava/lang/String;Ljava/lang/String;J)V

    if-le v14, v8, :cond_ba

    sub-int/2addr v14, v8

    .line 75
    invoke-virtual {v5, v7, v8, v14}, Ljava/security/MessageDigest;->update([BII)V

    .line 76
    invoke-virtual {v6, v7, v8, v14}, Ljava/security/MessageDigest;->update([BII)V

    :cond_ba
    move-object/from16 v2, v16

    move-wide/from16 v11, v18

    goto/16 :goto_25

    :catchall_c0
    move-exception v0

    goto/16 :goto_151

    :catch_c3
    move-exception v0

    goto :goto_12a

    :catch_c5
    move-exception v0

    goto :goto_130

    :cond_c7
    int-to-long v1, v13

    const-wide/32 v7, 0x400000

    mul-long v1, v1, v7

    cmp-long v9, v1, v11

    if-lez v9, :cond_f4

    add-long v9, v11, v7

    cmp-long v1, v1, v9

    if-gez v1, :cond_f4

    .line 82
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcn/kuaipan/android/utils/b;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcn/kuaipan/android/utils/b;->a([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    sub-int/2addr v13, v2

    int-to-long v5, v13

    const-wide/32 v7, 0x400000

    mul-long v5, v5, v7

    sub-long/2addr v11, v5

    .line 82
    invoke-virtual {v3, v0, v1, v11, v12}, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->a(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_fa

    :cond_f4
    const-wide/16 v1, 0x0

    cmp-long v1, v11, v1

    if-eqz v1, :cond_109

    .line 89
    :goto_fa
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcn/kuaipan/android/utils/b;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->a(Ljava/lang/String;)V
    :try_end_105
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_33 .. :try_end_105} :catch_c5
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_105} :catch_c3
    .catchall {:try_start_33 .. :try_end_105} :catchall_c0

    .line 97
    :try_start_105
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_108
    .catch Ljava/lang/Throwable; {:try_start_105 .. :try_end_108} :catch_108

    :catch_108
    return-object v3

    .line 86
    :cond_109
    :try_start_109
    new-instance v1, Lcn/kuaipan/android/a/f;

    const v2, 0x7a123

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " read error."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcn/kuaipan/android/a/f;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_123
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_109 .. :try_end_123} :catch_c5
    .catch Ljava/io/IOException; {:try_start_109 .. :try_end_123} :catch_c3
    .catchall {:try_start_109 .. :try_end_123} :catchall_c0

    :catchall_123
    move-exception v0

    move-object/from16 v16, v2

    goto :goto_151

    :catch_127
    move-exception v0

    move-object/from16 v16, v2

    :goto_12a
    move-object/from16 v1, v16

    goto :goto_13c

    :catch_12d
    move-exception v0

    move-object/from16 v16, v2

    :goto_130
    move-object/from16 v1, v16

    goto :goto_145

    :catch_133
    move-exception v0

    const/4 v1, 0x0

    goto :goto_145

    :catchall_136
    move-exception v0

    const/16 v16, 0x0

    goto :goto_151

    :catch_13a
    move-exception v0

    const/4 v1, 0x0

    :goto_13c
    const/4 v2, 0x0

    .line 94
    :try_start_13d
    invoke-static {v0, v2}, Lcn/kuaipan/android/a/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcn/kuaipan/android/a/e;

    move-result-object v0

    throw v0

    :catch_142
    move-exception v0

    const/4 v2, 0x0

    move-object v1, v2

    .line 92
    :goto_145
    new-instance v2, Lcn/kuaipan/android/a/f;

    const v3, 0x7a125

    invoke-direct {v2, v3, v0}, Lcn/kuaipan/android/a/f;-><init>(ILjava/lang/Throwable;)V

    throw v2
    :try_end_14e
    .catchall {:try_start_13d .. :try_end_14e} :catchall_14e

    :catchall_14e
    move-exception v0

    move-object/from16 v16, v1

    .line 97
    :goto_151
    :try_start_151
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_154
    .catch Ljava/lang/Throwable; {:try_start_151 .. :try_end_154} :catch_154

    .line 100
    :catch_154
    throw v0
.end method

.method private c()Lorg/json/JSONArray;
    .registers 7

    .line 132
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 133
    iget-object v1, p0, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->Y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/kuaipan/android/kss/upload/UploadFileInfo$BlockInfo;

    .line 134
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "sha1"

    .line 135
    iget-object v5, v2, Lcn/kuaipan/android/kss/upload/UploadFileInfo$BlockInfo;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "md5"

    .line 136
    iget-object v5, v2, Lcn/kuaipan/android/kss/upload/UploadFileInfo$BlockInfo;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "size"

    .line 137
    iget v2, v2, Lcn/kuaipan/android/kss/upload/UploadFileInfo$BlockInfo;->c:I

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 138
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_34} :catch_36

    goto :goto_b

    :cond_35
    return-object v0

    :catch_36
    const-string v0, "UploadFileInfo"

    const-string v1, "Failed generate Json String for UploadRequestInfo"

    .line 143
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a(I)Lcn/kuaipan/android/kss/upload/UploadFileInfo$BlockInfo;
    .registers 3

    .line 161
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_a

    const/4 p1, 0x0

    return-object p1

    .line 165
    :cond_a
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/kuaipan/android/kss/upload/UploadFileInfo$BlockInfo;

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .line 153
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->X:Ljava/lang/String;

    return-object v0
.end method

.method a(Ljava/lang/String;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->X:Ljava/lang/String;

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    .line 157
    iget-object v0, p0, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->Y:Ljava/util/ArrayList;

    new-instance v1, Lcn/kuaipan/android/kss/upload/UploadFileInfo$BlockInfo;

    long-to-int p3, p3

    const/4 p4, 0x0

    invoke-direct {v1, p1, p2, p3, p4}, Lcn/kuaipan/android/kss/upload/UploadFileInfo$BlockInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcn/kuaipan/android/kss/upload/UploadFileInfo$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 4

    .line 169
    invoke-direct {p0}, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->c()Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 174
    :cond_8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_d
    const-string v2, "block_infos"

    .line 176
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_16} :catch_17

    return-object v0

    .line 181
    :catch_17
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 186
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "block_infos"

    .line 188
    invoke-direct {p0}, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->c()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sha1"

    .line 189
    iget-object v2, p0, Lcn/kuaipan/android/kss/upload/UploadFileInfo;->X:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_15} :catch_15

    .line 193
    :catch_15
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
